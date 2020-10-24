.class public Lcom/android/camera/effect/renders/NoneEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source ""


# static fields
.field private static final FRAG:Ljava/lang/String; = "precision mediump float; \nuniform float uAlpha; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n}"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    return-void
.end method


# virtual methods
.method public getFragShaderString()Ljava/lang/String;
    .locals 0

    const-string p0, "precision mediump float; \nuniform float uAlpha; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    gl_FragColor = texture2D(sTexture, vTexCoord)*uAlpha; \n}"

    return-object p0
.end method
