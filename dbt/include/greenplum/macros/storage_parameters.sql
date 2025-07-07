{% macro storage_parameters(appendoptimized, blocksize, orientation, compresstype, compresslevel) %}
    {% set storage_parameters %}
        {% if appendoptimized %}
            with (
                appendoptimized={{ appendoptimized }}
                , blocksize={{ blocksize }}
                , compresstype={{ compresstype }}
                , compresslevel={{ compresslevel }}
                , orientation={{ orientation }}
            )
        {% endif %}
    {% endset %}

    {{ return(storage_parameters) }}
{% endmacro %}

{% macro beam_storage_parameters(compresstype, compresslevel) %}
    with (
        compresstype={{ compresstype }},
        compresslevel={{ compresslevel }},
	    ctidversion=2
    )
{% endmacro %}