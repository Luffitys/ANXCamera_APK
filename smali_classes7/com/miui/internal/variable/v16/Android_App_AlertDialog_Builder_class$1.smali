.class Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_App_AlertDialog_Builder$Interface;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/AlertDialog$Builder;Landroid/content/Context;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/internal/variable/v16/Android_App_AlertDialog_Builder_class;->handle_init_(JLandroid/app/AlertDialog$Builder;Landroid/content/Context;I)V

    return-void
.end method
