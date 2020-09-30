if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => 'ap-northeast-1',     # 例: 'ap-northeast-1'
      :aws_access_key_id     => 'AKIA4HS3EDINH63LQLSC',
      :aws_secret_access_key => '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'
    }
    config.fog_directory     =  'favo-youtube'
  end
end