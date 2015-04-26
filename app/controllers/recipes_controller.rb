# This file is app/controllers/recipes_controller.rb
class RecipesController < ApplicationController


  def index
    @recipes = Recipe.all
  end

  def show
    id = params[:id] # retrieve recipe ID from URI route
    @recipe = Recipe.find(id) rescue nil # Look up recipe by unique ID
    # will render app/views/recipe/show.<extension> by default

     if @recipe.nil?
       redirect_to recipes_path
     end

  end

  def retrieve
    check_box_tag = 'accept'
  end

  def new
    # default: render 'new' template
  end

  def create
    @recipe = Recipe.create!(params[:recipe])
    flash[:notice] = "#{@recipe.title} was successfully created."
    redirect_to recipes_path
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    @recipe = Recipe.find params[:id]
    @recipe.update_attributes!(params[:recipe])
    flash[:notice] = "#{@recipe.title} was successfully updated."
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    flash[:notice] = "Recipe '#{@recipe.title}' deleted."
    redirect_to recipes_path
  end

  def selected_items
    @recipes = Recipe.where("id IN(?)", params[:items].split(','))
  end


end
