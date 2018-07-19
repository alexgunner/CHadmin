class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :product_variants, :new_product_variants]
  before_action :set_product_variant, only: [:edit_product_variants, :update_product_variant]
  before_action :authenticate_user!
  layout "dashboard"
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to products_url, notice: 'Correctamente creado' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to products_url, notice: 'Correctamente actualizado' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Correctamente eliminado' }
      format.json { head :no_content }
    end
  end

  def product_variants
    
  end

  def new_product_variants

  end

  def create_product_variant
    product = Product.find(params[:product_id])
    ProductVariant.create(variant_size: params[:size], price: params[:price], product: product, description: params[:description], reference_code: params[:reference_code], reposition: params[:reposition], reposition_date: params[:reposition_date])
    redirect_to '/products/' + product.id.to_s + '/product_variants'
  end

  def edit_product_variants
    
  end

  def update_product_variant
    product = Product.find(params[:product_id])
    @product_variant.variant_size = params[:size]
    @product_variant.price = params[:price]
    @product_variant.description = params[:description]
    @product_variant.reference_code = params[:reference_code]
    @product_variant.reposition = params[:reposition]
    @product_variant.reposition_date = params[:reposition_date]
    @product_variant.save
    redirect_to '/products/' + product.id.to_s + '/product_variants'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_product_variant
      @product_variant = ProductVariant.find(params[:variant_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :reference_code, :measure_unit_id, :category_id, :subcategory_id, :provider_id, :manufacturer_id, :picture, :offer, :details)
    end
end
