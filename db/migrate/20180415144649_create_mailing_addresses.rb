class CreateMailingAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :mailing_addresses do |t|
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :state_province
      t.string :zip_postal

      t.references :mail_addressable,
        polymorphic: true,
        index: { name: 'index_mail_address_mail_addressable' }

      t.timestamps
    end
  end
end
