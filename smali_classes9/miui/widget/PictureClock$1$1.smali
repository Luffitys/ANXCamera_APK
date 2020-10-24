.class Lmiui/widget/PictureClock$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lmiui/widget/PictureClock$1;


# direct methods
.method constructor <init>(Lmiui/widget/PictureClock$1;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/PictureClock$1$1;->this$1:Lmiui/widget/PictureClock$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/PictureClock$1$1;->this$1:Lmiui/widget/PictureClock$1;

    iget-object p0, p0, Lmiui/widget/PictureClock$1;->this$0:Lmiui/widget/PictureClock;

    invoke-static {p0}, Lmiui/widget/PictureClock;->access$200(Lmiui/widget/PictureClock;)V

    return-void
.end method
