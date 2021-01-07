<?php

use Twig\Environment;
use Twig\Error\LoaderError;
use Twig\Error\RuntimeError;
use Twig\Extension\SandboxExtension;
use Twig\Markup;
use Twig\Sandbox\SecurityError;
use Twig\Sandbox\SecurityNotAllowedTagError;
use Twig\Sandbox\SecurityNotAllowedFilterError;
use Twig\Sandbox\SecurityNotAllowedFunctionError;
use Twig\Source;
use Twig\Template;

/* /Applications/MAMP/htdocs/wellwell/plugins/responsiv/uploader/components/imageuploader/image-single.htm */
class __TwigTemplate_b984b87868ca857e446ba308cdba8f81ed6cf075441d7083cd150505d50e27b6 extends \Twig\Template
{
    private $source;
    private $macros = [];

    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        $macros = $this->macros;
        // line 1
        $context["file"] = twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "singleFile", [], "any", false, false, false, 1);
        // line 2
        echo "
<div
    class=\"responsiv-uploader-fileupload style-image-single ";
        // line 4
        echo ((twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "isPopulated", [], "method", false, false, false, 4)) ? ("is-populated") : (""));
        echo "\"
    data-control=\"fileupload\"
    data-template=\"#uploaderTemplate";
        // line 6
        echo twig_escape_filter($this->env, ($context["__SELF__"] ?? null), "html", null, true);
        echo "\"
    data-unique-id=\"";
        // line 7
        echo twig_escape_filter($this->env, ($context["__SELF__"] ?? null), "html", null, true);
        echo "\"
    data-thumbnail-width=\"";
        // line 8
        ((twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "imageWidth", [], "any", false, false, false, 8)) ? (print (twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "imageWidth", [], "any", false, false, false, 8), "html", null, true))) : (print ("0")));
        echo "\"
    data-thumbnail-height=\"";
        // line 9
        ((twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "imageHeight", [], "any", false, false, false, 9)) ? (print (twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "imageHeight", [], "any", false, false, false, 9), "html", null, true))) : (print ("0")));
        echo "\"
    ";
        // line 10
        if (twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "fileTypes", [], "any", false, false, false, 10)) {
            echo "data-file-types=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "fileTypes", [], "any", false, false, false, 10), "html", null, true);
            echo "\"";
        }
        // line 11
        echo ">

    <!-- Field placeholder -->
    <input type=\"hidden\" name=\"_uploader[";
        // line 14
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "attribute", [], "any", false, false, false, 14), "html", null, true);
        echo "]\" value=\"\" />

    <!-- Add New Image -->
    <a
        href=\"javascript:;\"
        style=\"";
        // line 19
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "getCssBlockDimensions", [], "any", false, false, false, 19), "html", null, true);
        echo "\"
        class=\"upload-button\">
        <span class=\"upload-button-icon\"></span>
    </a>

    <!-- Existing file -->
    <div class=\"upload-files-container\">
        ";
        // line 26
        if (($context["file"] ?? null)) {
            // line 27
            echo "            <div class=\"upload-object is-success\" data-id=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["file"] ?? null), "id", [], "any", false, false, false, 27), "html", null, true);
            echo "\" data-path=\"";
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["file"] ?? null), "pathUrl", [], "any", false, false, false, 27), "html", null, true);
            echo "\">
                <div class=\"icon-container image\">
                    <img src=\"";
            // line 29
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["file"] ?? null), "thumbUrl", [], "any", false, false, false, 29), "html", null, true);
            echo "\" alt=\"\" />
                </div>
                <div class=\"info\">
                    <h4 class=\"filename\">
                        <span data-dz-name>";
            // line 33
            echo twig_escape_filter($this->env, ((twig_get_attribute($this->env, $this->source, ($context["file"] ?? null), "title", [], "any", false, false, false, 33)) ? (twig_get_attribute($this->env, $this->source, ($context["file"] ?? null), "title", [], "any", false, false, false, 33)) : (twig_get_attribute($this->env, $this->source, ($context["file"] ?? null), "file_name", [], "any", false, false, false, 33))), "html", null, true);
            echo "</span>
                        <a
                            href=\"javascript:;\"
                            class=\"upload-remove-button\"
                            data-request=\"";
            // line 37
            echo twig_escape_filter($this->env, (($context["__SELF__"] ?? null) . "::onRemoveAttachment"), "html", null, true);
            echo "\"
                            data-request-confirm=\"Are you sure?\"
                            data-request-data=\"file_id: ";
            // line 39
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["file"] ?? null), "id", [], "any", false, false, false, 39), "html", null, true);
            echo "\"
                            >&times;</a>
                    </h4>
                    <p class=\"size\">";
            // line 42
            echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["file"] ?? null), "sizeToString", [], "any", false, false, false, 42), "html", null, true);
            echo "</p>
                </div>
                <div class=\"meta\"></div>
            </div>
        ";
        }
        // line 47
        echo "    </div>

</div>

<!-- Template for new file -->
<script type=\"text/template\" id=\"uploaderTemplate";
        // line 52
        echo twig_escape_filter($this->env, ($context["__SELF__"] ?? null), "html", null, true);
        echo "\">
    <div class=\"upload-object dz-preview dz-file-preview\">
        <div class=\"icon-container image\">
            <img data-dz-thumbnail style=\"";
        // line 55
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, ($context["__SELF__"] ?? null), "getCssDimensions", [], "any", false, false, false, 55), "html", null, true);
        echo "\" />
        </div>
        <div class=\"info\">
            <h4 class=\"filename\">
                <span data-dz-name></span>
                <a
                    href=\"javascript:;\"
                    class=\"upload-remove-button\"
                    data-request=\"";
        // line 63
        echo twig_escape_filter($this->env, (($context["__SELF__"] ?? null) . "::onRemoveAttachment"), "html", null, true);
        echo "\"
                    data-request-confirm=\"Are you sure?\"
                    >&times;</a>
            </h4>
            <p class=\"size\" data-dz-size></p>
            <p class=\"error\"><span data-dz-errormessage></span></p>
        </div>
        <div class=\"meta\">
            <div class=\"progress-bar\"><span class=\"upload-progress\" data-dz-uploadprogress></span></div>
        </div>
    </div>
</script>
";
    }

    public function getTemplateName()
    {
        return "/Applications/MAMP/htdocs/wellwell/plugins/responsiv/uploader/components/imageuploader/image-single.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  160 => 63,  149 => 55,  143 => 52,  136 => 47,  128 => 42,  122 => 39,  117 => 37,  110 => 33,  103 => 29,  95 => 27,  93 => 26,  83 => 19,  75 => 14,  70 => 11,  64 => 10,  60 => 9,  56 => 8,  52 => 7,  48 => 6,  43 => 4,  39 => 2,  37 => 1,);
    }

    public function getSourceContext()
    {
        return new Source("{% set file = __SELF__.singleFile %}

<div
    class=\"responsiv-uploader-fileupload style-image-single {{ __SELF__.isPopulated() ? 'is-populated' }}\"
    data-control=\"fileupload\"
    data-template=\"#uploaderTemplate{{ __SELF__ }}\"
    data-unique-id=\"{{ __SELF__ }}\"
    data-thumbnail-width=\"{{ __SELF__.imageWidth ?: '0' }}\"
    data-thumbnail-height=\"{{ __SELF__.imageHeight ?: '0' }}\"
    {% if __SELF__.fileTypes %}data-file-types=\"{{ __SELF__.fileTypes }}\"{% endif %}
>

    <!-- Field placeholder -->
    <input type=\"hidden\" name=\"_uploader[{{ __SELF__.attribute }}]\" value=\"\" />

    <!-- Add New Image -->
    <a
        href=\"javascript:;\"
        style=\"{{ __SELF__.getCssBlockDimensions }}\"
        class=\"upload-button\">
        <span class=\"upload-button-icon\"></span>
    </a>

    <!-- Existing file -->
    <div class=\"upload-files-container\">
        {% if file %}
            <div class=\"upload-object is-success\" data-id=\"{{ file.id }}\" data-path=\"{{ file.pathUrl }}\">
                <div class=\"icon-container image\">
                    <img src=\"{{ file.thumbUrl }}\" alt=\"\" />
                </div>
                <div class=\"info\">
                    <h4 class=\"filename\">
                        <span data-dz-name>{{ file.title ?: file.file_name }}</span>
                        <a
                            href=\"javascript:;\"
                            class=\"upload-remove-button\"
                            data-request=\"{{ __SELF__ ~ '::onRemoveAttachment' }}\"
                            data-request-confirm=\"Are you sure?\"
                            data-request-data=\"file_id: {{ file.id }}\"
                            >&times;</a>
                    </h4>
                    <p class=\"size\">{{ file.sizeToString }}</p>
                </div>
                <div class=\"meta\"></div>
            </div>
        {% endif %}
    </div>

</div>

<!-- Template for new file -->
<script type=\"text/template\" id=\"uploaderTemplate{{ __SELF__ }}\">
    <div class=\"upload-object dz-preview dz-file-preview\">
        <div class=\"icon-container image\">
            <img data-dz-thumbnail style=\"{{ __SELF__.getCssDimensions }}\" />
        </div>
        <div class=\"info\">
            <h4 class=\"filename\">
                <span data-dz-name></span>
                <a
                    href=\"javascript:;\"
                    class=\"upload-remove-button\"
                    data-request=\"{{ __SELF__ ~ '::onRemoveAttachment' }}\"
                    data-request-confirm=\"Are you sure?\"
                    >&times;</a>
            </h4>
            <p class=\"size\" data-dz-size></p>
            <p class=\"error\"><span data-dz-errormessage></span></p>
        </div>
        <div class=\"meta\">
            <div class=\"progress-bar\"><span class=\"upload-progress\" data-dz-uploadprogress></span></div>
        </div>
    </div>
</script>
", "/Applications/MAMP/htdocs/wellwell/plugins/responsiv/uploader/components/imageuploader/image-single.htm", "");
    }
}
