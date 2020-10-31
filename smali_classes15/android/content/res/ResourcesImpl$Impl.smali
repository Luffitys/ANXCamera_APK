.class Landroid/content/res/ResourcesImpl$Impl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/ResourcesImpl$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/ResourcesImpl$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public loadDrawable(Landroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 8

    invoke-virtual/range {p1 .. p6}, Landroid/content/res/ResourcesImpl;->originalLoadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
