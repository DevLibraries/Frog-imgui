project "imgui"
    kind "StaticLib"
    language "C"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "imconfig,h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.h",
        "imgui_internal.h",
        "imgui_widgets.h",
        "imstb_rectpack.h",
        "imstb_textedit.h",
        "imstb_truetype.h",
        "imgui_demo.h"

    }

	filter "system:windows"
        cppdialect "C++17"
        systemversion "latest"
        staticruntime "On"

    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
