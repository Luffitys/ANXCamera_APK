.class Landroidx/loader/content/ModernAsyncTask$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroidx/loader/content/ModernAsyncTask;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/loader/content/ModernAsyncTask;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    iput-object p2, p0, Landroidx/loader/content/ModernAsyncTask$3;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/loader/content/ModernAsyncTask$3;->this$0:Landroidx/loader/content/ModernAsyncTask;

    iget-object p0, p0, Landroidx/loader/content/ModernAsyncTask$3;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/loader/content/ModernAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method
