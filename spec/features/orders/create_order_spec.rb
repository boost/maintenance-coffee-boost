# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Creating an order', type: :feature do
  let(:user) { create(:user) }

  before do
    sign_in user
    visit '/orders/new'
  end

  scenario 'user creates a new order with one drink' do
    fill_in('Meeting/Client name', with: 'Great meeting')
    fill_in('order_order_items_attributes_0_person_name', with: 'John')
    fill_in('order_order_items_attributes_0_drink_name', with: 'latte')
    click_button('Submit order')

    expect(page.current_path).to eq '/orders'
    expect(page).to have_content 'Order was successfully created.'
    expect(page).to have_content 'Great meeting'
    expect(page).to have_content 'John'
    expect(page).to have_content 'latte'
  end

  scenario 'user does not fill in the meeting name' do
    fill_in('order_order_items_attributes_0_person_name', with: 'John')
    fill_in('order_order_items_attributes_0_drink_name', with: 'latte')
    click_button('Submit order')

    expect(page.current_path).to eq '/orders'
    expect(page).to have_content "Meeting/Client name can't be blank"
  end

  scenario 'user does not fill any order item details' do
    # TODO! Intentionally failing
    # We need to enforce that an Order includes at least one OrderItem.

    fill_in('Meeting/Client name', with: 'Great meeting')
    click_button('Submit order')

    expect(page.current_path).to eq '/orders'
    expect(page).to have_content 'Order must contain at least one item'
  end
end
