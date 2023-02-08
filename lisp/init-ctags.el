;; -*- coding: utf-8; lexical-binding: t; -*-

;; Don't ask before rereading the TAGS files if they have changed
(setq tags-revert-without-query t)
;; Do case-sensitive tag searches
(setq tags-case-fold-search nil) ;; t=case-insensitive, nil=case-sensitive
;; Don't warn when TAGS files are large
(setq large-file-warning-threshold nil)

;; {{ extra 3rd party API lookup using Ctags commands and API
(defvar my-js-document-tagnames
  '(characterSet
    childElementCount
    children
    compatMode
    contentType
    currentScript
    defaultView
    designMode
    doctype
    documentElement
    documentURI
    documentURIObject
    domain
    domConfig
    embeds
    fgColor
    firstElementChild
    forms
    fullscreen
    fullscreenEnabled
    height
    hidden
    images
    implementation
    lastElementChild
    lastModified
    lastStyleSheetSet
    linkColor
    links
    location
    mozSyntheticDocument
    onabort
    onafterscriptexecute
    onanimationcancel
    onanimationend
    onanimationiteration
    onauxclick
    onbeforescriptexecute
    onblur
    oncancel
    oncanplay
    oncanplaythrough
    onchange
    onclick
    onclose
    oncontextmenu
    oncuechange
    ondblclick
    ondurationchange
    onended
    onerror
    onfocus
    onformdata
    onfullscreenchange
    onfullscreenerror
    ongotpointercapture
    oninput
    oninvalid
    onkeydown
    onkeypress
    onkeyup
    onload
    onloadeddata
    onloadedmetadata
    onloadend
    onloadstart
    onlostpointercapture
    onmousedown
    onmouseenter
    onmouseleave
    onmousemove
    onmouseout
    onmouseover
    onmouseup
    onoffline
    ononline
    onpause
    onplay
    onplaying
    onpointercancel
    onpointerdown
    onpointerenter
    onpointerleave
    onpointermove
    onpointerout
    onpointerover
    onpointerup
    onreset
    onresize
    onscroll
    onselect
    onselectionchange
    onselectstart
    onsubmit
    ontouchcancel
    ontouchstart
    ontransitioncancel
    ontransitionend
    onvisibilitychange
    onwheel
    origin
    pictureInPictureEnabled
    plugins
    popupNode
    preferredStyleSheetSet
    readyState
    referrer
    rootElement
    scripts
    scrollingElement
    selectedStyleSheetSet
    styleSheetSets
    timeline
    title
    tooltipNode
    visibilityState
    vlinkColor
    width
    xmlEncoding
    xmlVersion
    adoptNode
    append
    caretRangeFromPoint
    clear
    close
    createAttribute
    createCDATASection
    createComment
    createDocumentFragment
    createElement
    createElementNS
    createEntityReference
    createEvent
    createExpression
    createExpression
    createNodeIterator
    createNSResolver
    createNSResolver
    createProcessingInstruction
    createRange
    createTextNode
    createTouch
    createTouchList
    createTreeWalker
    enableStyleSheetsForSet
    evaluate
    evaluate
    execCommand
    exitFullscreen
    exitPictureInPicture
    exitPointerLock
    getBoxObjectFor
    getElementById
    getElementsByClassName
    getElementsByName
    getElementsByTagName
    getElementsByTagNameNS
    hasFocus
    hasStorageAccess
    importNode
    mozSetImageElement
    prepend
    queryCommandEnabled
    queryCommandSupported
    querySelector
    querySelector
    querySelectorAll
    querySelectorAll
    registerElement
    releaseCapture
    replaceChildren
    requestStorageAccess
    write
    writeln))

(defvar my-js-window-tagnames
  '(caches
    closed
    console
    controllers
    crossOriginIsolated
    crypto
    customElements
    defaultStatus
    devicePixelRatio
    dialogArguments
    directories
    document
    event
    frameElement
    frames
    fullScreen
    history
    indexedDB
    innerHeight
    innerWidth
    isSecureContext
    isSecureContext
    length
    localStorage
    location
    locationbar
    menubar
    mozAnimationStartTime
    mozInnerScreenX
    mozInnerScreenY
    mozPaintCount
    name
    navigator
    onabort
    onafterprint
    onanimationcancel
    onanimationend
    onanimationiteration
    onappinstalled
    onauxclick
    onbeforeinstallprompt
    onbeforeprint
    onbeforeunload
    onblur
    oncancel
    oncanplay
    oncanplaythrough
    onchange
    onclick
    onclose
    oncontextmenu
    oncuechange
    ondblclick
    ondevicelight
    ondevicemotion
    ondeviceorientation
    ondeviceorientationabsolute
    ondeviceproximity
    ondragdrop
    ondurationchange
    onended
    onerror
    onfocus
    onformdata
    ongamepadconnected
    ongamepaddisconnected
    ongotpointercapture
    onhashchange
    oninput
    oninvalid
    onkeydown
    onkeypress
    onkeyup
    onlanguagechange
    onload
    onloadeddata
    onloadedmetadata
    onloadend
    onloadstart
    onlostpointercapture
    onmessage
    onmessageerror
    onmousedown
    onmouseenter
    onmouseleave
    onmousemove
    onmouseout
    onmouseover
    onmouseup
    onmozbeforepaint
    onpaint
    onpause
    onplay
    onplaying
    onpointercancel
    onpointerdown
    onpointerenter
    onpointerleave
    onpointermove
    onpointerout
    onpointerover
    onpointerup
    onpopstate
    onrejectionhandled
    onreset
    onresize
    onscroll
    onselect
    onselectionchange
    onselectstart
    onstorage
    onsubmit
    ontouchcancel
    ontouchstart
    ontransitioncancel
    ontransitionend
    onunhandledrejection
    onunload
    onuserproximity
    onvrdisplayactivate
    onvrdisplayblur
    onvrdisplayconnect
    onvrdisplaydeactivate
    onvrdisplaydisconnect
    onvrdisplayfocus
    onvrdisplaypointerrestricted
    onvrdisplaypointerunrestricted
    onvrdisplaypresentchange
    onwheel
    opener
    origin
    outerHeight
    outerWidth
    pageXOffset
    pageYOffset
    parent
    performance
    personalbar
    pkcs11
    screen
    screenLeft
    screenTop
    screenX
    screenY
    scrollbars
    scrollMaxX
    scrollMaxY
    scrollX
    scrollY
    self
    sessionStorage
    sidebar
    speechSynthesis
    status
    statusbar
    toolbar
    top
    visualViewport
    window
    Methods
    alert
    atob
    back
    blur
    btoa
    cancelAnimationFrame
    cancelIdleCallback
    captureEvents
    clearImmediate
    clearInterval
    clearTimeout
    close
    confirm
    convertPointFromNodeToPage
    convertPointFromPageToNode
    createImageBitmap
    dump
    fetch
    find
    focus
    forward
    getAttention
    getComputedStyle
    getDefaultComputedStyle
    getSelection
    home
    matchMedia
    minimize
    moveBy
    moveTo
    open
    openDialog
    postMessage
    print
    prompt
    queueMicrotask
    releaseEvents
    requestAnimationFrame
    requestFileSystem
    requestIdleCallback
    resizeBy
    resizeTo
    routeEvent
    scroll
    scrollBy
    scrollByLines
    scrollByPages
    scrollTo
    setCursor
    setImmediate
    setInterval
    setTimeout
    showModalDialog
    sizeToContent
    stop
    updateCommands))

(defvar my-python-numpy-tagnames
  '(abs
    absolute
    add
    add_docstring
    add_newdoc
    add_newdoc_ufunc
    alen
    all
    allclose
    alltrue
    amax
    amin
    angle
    any
    append
    apply_along_axis
    apply_over_axes
    arange
    arccos
    arccosh
    arcsin
    arcsinh
    arctan
    arctan2
    arctanh
    argmax
    argmin
    argpartition
    argsort
    argwhere
    around
    array
    array2string
    array_equal
    array_equiv
    array_repr
    array_split
    array_str
    asanyarray
    asarray
    asarray_chkfinite
    ascontiguousarray
    asfarray
    asfortranarray
    asmatrix
    asscalar
    atleast_1d
    atleast_2d
    atleast_3d
    average
    bartlett
    base_repr
    binary_repr
    bincount
    bitwise_and
    bitwise_not
    bitwise_or
    bitwise_xor
    blackman
    block
    bmat
    bool
    bool8
    bool_
    broadcast
    broadcast_arrays
    broadcast_to
    busday_count
    busday_offset
    busdaycalendar
    byte
    byte_bounds
    bytes0
    bytes_
    c_
    can_cast
    cast
    cbrt
    cdouble
    ceil
    cfloat
    char
    character
    chararray
    choose
    clip
    clongdouble
    clongfloat
    column_stack
    common_type
    compare_chararrays
    compat
    complex
    complex128
    complex256
    complex64
    complex_
    complexfloating
    compress
    concatenate
    conj
    conjugate
    convolve
    copy
    copysign
    copyto
    core
    corrcoef
    correlate
    cos
    cosh
    count_nonzero
    cov
    cross
    csingle
    ctypeslib
    cumprod
    cumproduct
    cumsum
    datetime64
    datetime_as_string
    datetime_data
    deg2rad
    degrees
    delete
    deprecate
    deprecate_with_doc
    diag
    diag_indices
    diag_indices_from
    diagflat
    diagonal
    diff
    digitize
    disp
    divide
    divmod
    dot
    double
    dsplit
    dstack
    dtype
    e
    ediff1d
    einsum
    einsum_path
    emath
    empty
    empty_like
    equal
    errstate
    euler_gamma
    exp
    exp2
    expand_dims
    expm1
    extract
    eye
    fabs
    fastCopyAndTranspose
    fft
    fill_diagonal
    find_common_type
    finfo
    fix
    flatiter
    flatnonzero
    flexible
    flip
    fliplr
    flipud
    float
    float128
    float16
    float32
    float64
    float_
    float_power
    floating
    floor
    floor_divide
    fmax
    fmin
    fmod
    format_float_positional
    format_float_scientific
    format_parser
    frexp
    frombuffer
    fromfile
    fromfunction
    fromiter
    frompyfunc
    fromregex
    fromstring
    full
    full_like
    fv
    gcd
    generic
    genfromtxt
    geomspace
    get_array_wrap
    get_include
    get_printoptions
    getbufsize
    geterr
    geterrcall
    geterrobj
    gradient
    greater
    greater_equal
    half
    hamming
    hanning
    heaviside
    histogram
    histogram2d
    histogram_bin_edges
    histogramdd
    hsplit
    hstack
    hypot
    i0
    identity
    iinfo
    imag
    in1d
    index_exp
    indices
    inexact
    inf
    info
    infty
    inner
    insert
    int
    int0
    int16
    int32
    int64
    int8
    int_
    intc
    integer
    interp
    intersect1d
    intp
    invert
    ipmt
    irr
    is_busday
    isclose
    iscomplex
    iscomplexobj
    isfinite
    isfortran
    isin
    isinf
    isnan
    isnat
    isneginf
    isposinf
    isreal
    isrealobj
    isscalar
    issctype
    issubclass_
    issubdtype
    issubsctype
    iterable
    ix_
    kaiser
    kernel_version
    kron
    lcm
    ldexp
    left_shift
    less
    less_equal
    lexsort
    lib
    linalg
    linspace
    little_endian
    load
    loads
    loadtxt
    log
    log10
    log1p
    log2
    logaddexp
    logaddexp2
    logical_and
    logical_not
    logical_or
    logical_xor
    logspace
    long
    longcomplex
    longdouble
    longfloat
    longlong
    lookfor
    ma
    mafromtxt
    mask_indices
    mat
    math
    matmul
    matrix
    matrixlib
    max
    maximum
    maximum_sctype
    may_share_memory
    mean
    median
    memmap
    meshgrid
    mgrid
    min
    min_scalar_type
    minimum
    mintypecode
    mirr
    mod
    modf
    moveaxis
    msort
    multiply
    nan
    nan_to_num
    nanargmax
    nanargmin
    nancumprod
    nancumsum
    nanmax
    nanmean
    nanmedian
    nanmin
    nanpercentile
    nanprod
    nanquantile
    nanstd
    nansum
    nanvar
    nbytes
    ndarray
    ndenumerate
    ndfromtxt
    ndim
    ndindex
    nditer
    negative
    nested_iters
    newaxis
    nextafter
    nonzero
    not_equal
    nper
    npv
    numarray
    number
    obj2sctype
    object
    object0
    object_
    ogrid
    oldnumeric
    ones
    ones_like
    os
    outer
    packbits
    pad
    partition
    percentile
    pi
    piecewise
    place
    pmt
    poly
    poly1d
    polyadd
    polyder
    polydiv
    polyfit
    polyint
    polymul
    polynomial
    polysub
    polyval
    positive
    power
    ppmt
    printoptions
    prod
    product
    promote_types
    ptp
    put
    put_along_axis
    putmask
    pv
    quantile
    r_
    rad2deg
    radians
    random
    rate
    ravel
    ravel_multi_index
    real
    real_if_close
    rec
    recarray
    recfromcsv
    recfromtxt
    reciprocal
    record
    remainder
    repeat
    require
    reshape
    resize
    result_type
    right_shift
    rint
    roll
    rollaxis
    roots
    rot90
    round
    round_
    row_stack
    s_
    safe_eval
    save
    savetxt
    savez
    savez_compressed
    sctype2char
    sctypeDict
    sctypeNA
    sctypes
    searchsorted
    select
    set_numeric_ops
    set_printoptions
    set_string_function
    setbufsize
    setdiff1d
    seterr
    seterrcall
    seterrobj
    setxor1d
    shape
    shares_memory
    short
    show_config
    sign
    signbit
    signedinteger
    sin
    sinc
    single
    singlecomplex
    sinh
    size
    sometrue
    sort
    sort_complex
    source
    spacing
    split
    sqrt
    square
    squeeze
    stack
    std
    str
    str0
    str_
    string_
    subtract
    sum
    swapaxes
    sys
    take
    take_along_axis
    tan
    tanh
    tensordot
    test
    testing
    tile
    timedelta64
    trace
    tracemalloc_domain
    transpose
    trapz
    tri
    tril
    tril_indices
    tril_indices_from
    trim_zeros
    triu
    triu_indices
    triu_indices_from
    true_divide
    trunc
    typeDict
    typeNA
    typecodes
    typename
    ubyte
    ufunc
    uint
    uint0
    uint16
    uint32
    uint64
    uint8
    uintc
    uintp
    ulonglong
    unicode
    unicode_
    union1d
    unique
    unpackbits
    unravel_index
    unsignedinteger
    unwrap
    use_hugepage
    ushort
    vander
    var
    vdot
    vectorize
    version
    void
    void0
    vsplit
    vstack
    warnings
    where
    who
    zeros
    zeros_like))

(defvar my-python-matplotlib-pyplot-tagnames
  '(acorr
    angle_spectrum
    annotate
    arrow
    autoscale
    autumn
    axes
    axhline
    axhspan
    axis
    axline
    axvline
    axvspan
    bar
    barbs
    barh
    bone
    box
    boxplot
    broken_barh
    cbook
    cla
    clabel
    clf
    clim
    close
    cm
    cohere
    colorbar
    colormaps
    connect
    contour
    contourf
    cool
    copper
    csd
    cycler
    delaxes
    disconnect
    docstring
    draw
    draw_all
    draw_if_interactive
    errorbar
    eventplot
    figaspect
    figimage
    figlegend
    fignum_exists
    figtext
    figure
    fill
    fill_between
    fill_betweenx
    findobj
    flag
    functools
    gca
    gcf
    gci
    get
    get_backend
    get_cmap
    get_current_fig_manager
    get_figlabels
    get_fignums
    get_plot_commands
    get_scale_names
    getp
    ginput
    gray
    grid
    hexbin
    hist
    hist2d
    hlines
    hot
    hsv
    importlib
    imread
    imsave
    imshow
    inferno
    inspect
    install_repl_displayhook
    interactive
    ioff
    ion
    isinteractive
    jet
    legend
    locator_params
    logging
    loglog
    magma
    magnitude_spectrum
    margins
    matplotlib
    matshow
    minorticks_off
    minorticks_on
    mlab
    new_figure_manager
    nipy_spectral
    np
    pause
    pcolor
    pcolormesh
    phase_spectrum
    pie
    pink
    plasma
    plot
    plot_date
    plotting
    polar
    prism
    psd
    quiver
    quiverkey
    rc
    rcParams
    rcParamsDefault
    rcParamsOrig
    rc_context
    rcdefaults
    rcsetup
    re
    register_cmap
    rgrids
    savefig
    sca
    scatter
    sci
    semilogx
    semilogy
    set_cmap
    set_loglevel
    setp
    show
    specgram
    spring
    spy
    stackplot
    stem
    step
    streamplot
    style
    subplot
    subplot2grid
    subplot_mosaic
    subplot_tool
    subplots
    subplots_adjust
    summer
    suptitle
    switch_backend
    sys
    table
    text
    thetagrids
    threading
    tick_params
    ticklabel_format
    tight_layout
    time
    title
    tricontour
    tricontourf
    tripcolor
    triplot
    twinx
    twiny
    uninstall_repl_displayhook
    violinplot
    viridis
    vlines
    waitforbuttonpress
    winter
    xcorr
    xkcd
    xlabel
    xlim
    xscale
    xticks
    ylabel
    ylim
    yscale
    yticks))

(defun my-tag-line (tagname)
  "Add TAGNAME."
  (counsel-etags-tag-line tagname tagname 0))

(defun my-update-tags-file (tags-file)
  "Update TAGS-FILE."
  (cond
   ;; javascript/typescript
   ((memq major-mode '(js-mode typescript-mode js2-mode))
    (let ((s1 (mapconcat 'my-tag-line my-js-document-tagnames ""))
          (s2 (mapconcat 'my-tag-line my-js-window-tagnames ""))
          (s3 (mapconcat 'my-tag-line '(addEventListener
                                        dispatchEvent
                                        removeEventListener) "")))
      (counsel-etags-append-to-tags-file
       (list (cons "https://developer.mozilla.org/en-US/docs/Web/API/Document/%s" s1)
             (cons "https://developer.mozilla.org/en-US/docs/Web/API/Window/%s" s2)
             (cons "https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/%s" s3))
       tags-file)))

   ;; python
   ((eq major-mode 'python-mode)
    (let ((s1 (mapconcat 'my-tag-line my-python-numpy-tagnames ""))
          (s2 (mapconcat 'my-tag-line my-python-matplotlib-pyplot-tagnames "")))
      (counsel-etags-append-to-tags-file
       (list (cons "https://numpy.org/doc/stable/reference/generated/numpy.%s.html" s1)
             (cons "https://matplotlib.org/api/_as_gen/matplotlib.pyplot.%s.html" s2))
       tags-file)))))
(add-hook 'counsel-etags-after-update-tags-hook 'my-update-tags-file)
;; }}

;;;
;;; 非常重要, 保留时自动更新
;;;
(with-eval-after-load 'counsel-etags
 (add-hook 'after-save-hook 'counsel-etags-update-tags-force))

(provide 'init-ctags)
