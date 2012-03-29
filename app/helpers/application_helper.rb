#require 'openssl'
#require 'digest/sha2'

module ApplicationHelper

	def full_image_path(source_id,image_name,img_size)
		if img_size.empty?
			img_size="medium"
		end
		if image_name.empty? || !image_name.end_with?(".jpg")
		   "http://img.souduanzu.com/default/default_#{img_size}.jpg"			
		else
			"http://img.souduanzu.com/#{source_id}/#{img_size}/#{image_name}"
		end
	end

	def source_name(source_id)
	    #logger.debug source_id
		source = WebSource.select("name").where(:id=>source_id)
		source.first["name"]	
	end

	def city_cn(city_en)
	end

	def sdz_encrypt(secret)
		sha256 = Digest::SHA2.new(256)
		aes = OpenSSL::Cipher.new("AES-256-CFB")
		iv = rand.to_s
		key = sha256.digest("Bond, James Bond")

		aes.encrypt
		aes.key = key
		aes.iv = iv
		encrypted_data = aes.update(secret) + aes.final

		encrypted_data
	end

	def sdz_encrypt(enrypted_secret)
		sha256 = Digest::SHA2.new(256)
		aes = OpenSSL::Cipher.new("AES-256-CFB")
		iv = sha256.digest("Everest")
		key = sha256.digest("H1Fly")

		aes.decrypt
		aes.key = key
		aes.iv = iv
		encrypted_data = aes.update(enrypted_secret) + aes.final

		encrypted_data
	end

end
