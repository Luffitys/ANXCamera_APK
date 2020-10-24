.class public Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;
.super Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# static fields
.field private static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;-><init>(Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    return-object p0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    move-result-object p0

    return-object p0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .locals 2

    const-string v0, "loadDrawable"

    const-string v1, "(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/util/ClassProxy;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v0, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    if-eqz v0, :cond_0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-interface/range {v0 .. v6}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;->loadDrawable(Landroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual/range {p0 .. p8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->originalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected handle()V
    .locals 9

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->handleLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected handleLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual/range {p0 .. p8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->callOriginalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {p1, p0, p6}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->setId(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-object p0
.end method

.method protected onClassProxyDisabled()V
    .locals 1

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/AbstractExtension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "com.miui.internal.variable.v26.Android_Content_Res_ResourcesImpl_class.originalLoadDrawable(long, ResourcesImpl, Resources, TypedValue, int, int, Resources.Theme)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
