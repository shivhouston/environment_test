# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'title' do
        visit new_book_path
        fill_in 'Title', with: 'Test book'
        fill_in 'Author', with: 'Him'
        fill_in 'Price', with: '99'
        select 'October', from: 'book_published_date_2i' 
        select '2017', from: 'book_published_date_1i' 
        select '1', from: 'book_published_date_3i' 
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('Test book')
    end

    scenario 'author' do
        visit new_book_path
        fill_in 'Title', with: 'Test book'
        fill_in 'Author', with: 'Him'
        fill_in 'Price', with: '99'
        select 'October', from: 'book_published_date_2i' 
        select '2017', from: 'book_published_date_1i' 
        select '1', from: 'book_published_date_3i' 
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('Him')
    end

    scenario 'price' do
        visit new_book_path
        fill_in 'Title', with: 'Test book'
        fill_in 'Author', with: 'Him'
        fill_in 'Price', with: '99'
        select 'October', from: 'book_published_date_2i' 
        select '2017', from: 'book_published_date_1i' 
        select '1', from: 'book_published_date_3i' 
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content('99')
    end

    scenario 'published_date' do
        visit new_book_path
        fill_in 'Title', with: 'Test book'
        fill_in 'Author', with: 'Him'
        fill_in 'Price', with: '99'
        select 'October', from: 'book_published_date_2i' 
        select '2017', from: 'book_published_date_1i' 
        select '1', from: 'book_published_date_3i' 
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content("2017-10-01")
    end
end 