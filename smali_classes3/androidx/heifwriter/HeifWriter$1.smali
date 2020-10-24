.class Landroidx/heifwriter/HeifWriter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/heifwriter/HeifWriter;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifWriter;)V
    .locals 0

    iput-object p1, p0, Landroidx/heifwriter/HeifWriter$1;->this$0:Landroidx/heifwriter/HeifWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroidx/heifwriter/HeifWriter$1;->this$0:Landroidx/heifwriter/HeifWriter;

    invoke-virtual {p0}, Landroidx/heifwriter/HeifWriter;->closeInternal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
