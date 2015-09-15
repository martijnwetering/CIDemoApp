properties {

}

task -name Build -action {
	exec {
		msbuild /t:build /p:Configuration=Release .\CIDemoApp.sln
	}
}

task -name BuildWebsite -action {
	exec {
		msbuild /t:build /p:Configuration=Release .\Website\website.publishproj
	}
}

task -name Clean -action {
	exec {
		msbuild /t:clean /p:Configuration=Release .\CIDemoApp.sln
	}
}

task -name default -depends Clean, Build, BuildWebsite