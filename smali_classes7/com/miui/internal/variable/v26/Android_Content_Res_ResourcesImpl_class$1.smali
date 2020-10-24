.class Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Content_Res_ResourcesImpl$Interface;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;->this$0:Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadDrawable(Landroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 9

    iget-object v0, p0, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class$1;->this$0:Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/miui/internal/variable/v26/Android_Content_Res_ResourcesImpl_class;->handleLoadDrawable(JLandroid/content/res/ResourcesImpl;Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
