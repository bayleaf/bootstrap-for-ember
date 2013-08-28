Bootstrap.BsProgressbarComponent = Ember.Component.extend(Bootstrap.TypeSupport,
    classNames: ['progress-bar']
    attributeBindings: ['style', 'role', 'aria-valuemin', 'ariaValueNow:aria-valuenow', 'aria-valuemax']
    classTypePrefix: 'progress-bar'
    role: 'progressbar'
    'aria-valuemin': 0
    'aria-valuemax': 100

    init: ->
        @._super()

    style: ( ->
        "width:#{@progress}%;"
    ).property('progress').cacheable()

    ariaValueNow: ( ->
        console.log '!!!!!!!!!!!!!!!!', @progress
        @progress
    ).property('progress').cacheable()
)