.class Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;
.super Ljava/lang/Object;
.source "Android_Content_Res_ResourcesImpl_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;->this$0:Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadDrawable(Landroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 16

    iget-object v0, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;->this$0:Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->handleLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
