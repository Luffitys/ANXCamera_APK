.class public Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;
.super Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;
.source "Android_Content_Res_ResourcesImpl_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/Overridable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;",
        "Lcom/miui/internal/variable/api/Overridable<",
        "Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;",
        ">;"
    }
.end annotation


# static fields
.field private static final DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;


# instance fields
.field private mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

.field private mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class$Factory;->get()Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/variable/v24/Android_Content_Res_ResourcesImpl_class;-><init>()V

    new-instance v0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;-><init>(Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;)V

    iput-object v0, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    return-void
.end method


# virtual methods
.method public asInterface()Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->mImpl:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    return-object v0
.end method

.method public bridge synthetic asInterface()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->asInterface()Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    move-result-object v0

    return-object v0
.end method

.method public bind(Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    return-void
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    invoke-virtual {p0, p1}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->bind(Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;)V

    return-void
.end method

.method public buildProxy()V
    .registers 3

    const-string v0, "loadDrawable"

    const-string v1, "(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    return-void
.end method

.method protected callOriginalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 16

    iget-object v0, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->mOriginal:Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;

    if-eqz v0, :cond_f

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-interface/range {v0 .. v6}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;->loadDrawable(Landroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_f
    invoke-virtual/range {p0 .. p8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->originalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected handle()V
    .registers 10

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
    .registers 11

    invoke-virtual/range {p0 .. p8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->callOriginalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->DrawableClass:Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;

    invoke-virtual {v1, v0, p6}, Lcom/miui/internal/variable/Android_Graphics_Drawable_Drawable_class;->setId(Landroid/graphics/drawable/Drawable;I)V

    :cond_11
    return-object v0
.end method

.method protected onClassProxyDisabled()V
    .registers 2

    invoke-static {}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Extension;->get()Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Extension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Extension;->setExtension(Lcom/miui/internal/variable/api/Overridable;)V

    return-void
.end method

.method protected originalLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v26.Android_Content_Res_ResourcesImpl_class.originalLoadDrawable(long, ResourcesImpl, Resources, TypedValue, int, int, Resources.Theme)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
