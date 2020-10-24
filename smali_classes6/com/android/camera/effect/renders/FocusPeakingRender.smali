.class public Lcom/android/camera/effect/renders/FocusPeakingRender;
.super Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.source ""


# static fields
.field static final DEFAULT_PEAK_COLOR:I = 0xf9310f

.field static final DEFAULT_THRESHOLD:F

.field private static final FRAG:Ljava/lang/String; = "precision mediump float; \nuniform float uThreshold; \nuniform vec3 uPeakColor; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nfloat laplacian_filter() { \n    vec2 step = uStep; \n    float tl = texture2D(sTexture, vTexCoord + vec2(-step.x, step.y)).r; \n    float tm = texture2D(sTexture, vTexCoord + vec2(0.0,     step.y)).r; \n    float tr = texture2D(sTexture, vTexCoord + vec2(step.x,  step.y)).r; \n    float ml = texture2D(sTexture, vTexCoord + vec2(-step.x,    0.0)).r; \n    float mr = texture2D(sTexture, vTexCoord + vec2(step.x,     0.0)).r; \n    float bl = texture2D(sTexture, vTexCoord + vec2(-step.x,    -step.y)).r; \n    float bm = texture2D(sTexture, vTexCoord + vec2(0.0,    -step.y)).r; \n    float br = texture2D(sTexture, vTexCoord + vec2(step.x,    -step.y)).r; \n    float GradX = -tl + tr - 2.0 * ml + 2.0 * mr - bl + br; \n    float GradY = tl +  2.0 * tm + tr - bl - 2.0 * bm - br; \n    return length(vec2(GradX,GradY)); \n} \nvoid main() { \n    float gray = laplacian_filter(); \n    if (gray > uThreshold) { \n        gl_FragColor.rgb = uPeakColor; \n        gl_FragColor.a = 1.0; \n    } else { \n        gl_FragColor = texture2D(sTexture, vTexCoord); \n    } \n}"


# instance fields
.field private mPeakColor:I

.field private mThreshold:F

.field private mUniformPeakColorH:I

.field private mUniformThresholdH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "camera_peaking_mf_threshold"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/camera/effect/renders/FocusPeakingRender;->DEFAULT_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    sget p1, Lcom/android/camera/effect/renders/FocusPeakingRender;->DEFAULT_THRESHOLD:F

    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mThreshold:F

    const p1, 0xf9310f

    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    sget p1, Lcom/android/camera/effect/renders/FocusPeakingRender;->DEFAULT_THRESHOLD:F

    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mThreshold:F

    const p1, 0xf9310f

    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 0

    const-string p0, "precision mediump float; \nuniform float uThreshold; \nuniform vec3 uPeakColor; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nfloat laplacian_filter() { \n    vec2 step = uStep; \n    float tl = texture2D(sTexture, vTexCoord + vec2(-step.x, step.y)).r; \n    float tm = texture2D(sTexture, vTexCoord + vec2(0.0,     step.y)).r; \n    float tr = texture2D(sTexture, vTexCoord + vec2(step.x,  step.y)).r; \n    float ml = texture2D(sTexture, vTexCoord + vec2(-step.x,    0.0)).r; \n    float mr = texture2D(sTexture, vTexCoord + vec2(step.x,     0.0)).r; \n    float bl = texture2D(sTexture, vTexCoord + vec2(-step.x,    -step.y)).r; \n    float bm = texture2D(sTexture, vTexCoord + vec2(0.0,    -step.y)).r; \n    float br = texture2D(sTexture, vTexCoord + vec2(step.x,    -step.y)).r; \n    float GradX = -tl + tr - 2.0 * ml + 2.0 * mr - bl + br; \n    float GradY = tl +  2.0 * tm + tr - bl - 2.0 * bm - br; \n    return length(vec2(GradX,GradY)); \n} \nvoid main() { \n    float gray = laplacian_filter(); \n    if (gray > uThreshold) { \n        gl_FragColor.rgb = uPeakColor; \n        gl_FragColor.a = 1.0; \n    } else { \n        gl_FragColor = texture2D(sTexture, vTexCoord); \n    } \n}"

    return-object p0
.end method

.method protected initShader()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShader()V

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "uThreshold"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mUniformThresholdH:I

    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "uPeakColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mUniformPeakColorH:I

    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->initShaderValue(Z)V

    iget p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mUniformThresholdH:I

    iget v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mThreshold:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mUniformPeakColorH:I

    iget v0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget p0, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p1, v0, v2, p0}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public setPeakColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mPeakColor:I

    return-void
.end method

.method public setThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/effect/renders/FocusPeakingRender;->mThreshold:F

    return-void
.end method
