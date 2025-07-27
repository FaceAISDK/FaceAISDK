Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '16.0'
s.name = "FaceAISDK"

s.summary = "FaceAISDK 不用联网单机实现人脸录入，人脸识别和活体检验；FaceAI SDK can add face, face recognition, and liveness detection on_device offline"

# git tag version
# git push origin version
# 上传 pod trunk push FaceAISDK.podspec --skip-import-validation
# 更新 pod install --repo-update

s.version = "2025.07.27"
s.swift_version = "6.1"


# 3
s.license = { :type => "FaceAISDK License", :file => "LICENSE" }
s.author = { "FaceAISDK" => "FaceAISDK.Service@gmail.com" }
s.homepage = "https://github.com/FaceAISDK/FaceAISDK"
s.source = { :git => "https://github.com/FaceAISDK/FaceAISDK.git",
             :tag => "#{s.version}" }

s.dependency 'GoogleMLKit/FaceDetection','9.0.0'
s.dependency 'TensorFlowLiteSwift','2.17.0'


s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

s.ios.vendored_frameworks  = 'BuildOut/*.xcframework'
s.resources = ['Resources/subModel.bundle','Model.bundle']

end

