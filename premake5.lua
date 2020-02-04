workspace "Lua"
	architecture "x64"

	configurations
	{
		"Debug",
		"Release"
	}
	project "Lua"
	--location "vendor/lua"
	language "C"
	systemversion "latest"
	kind "StaticLib"
	staticruntime "off"
	

	--targetdir ("../../bin/" .. outputdir .. "/%{prj.name}")
	--objdir ("../../build/" .. outputdir .. "/%{prj.name}")
	targetdir ("./bin/" .. "" .. "/%{prj.name}")
	objdir (".build/" .. "" .. "/%{prj.name}")

	includedirs 
	{
		--"lua"
	}

	files 
	{ 
		"*.h",
		"*.c"
	}
	
		filter "configurations:Debug"
		runtime "Debug"
		symbols "On"

	filter "configurations:Release"
		runtime "Release"
		optimize "On"