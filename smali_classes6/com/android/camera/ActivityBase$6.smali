.class Lcom/android/camera/ActivityBase$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field final synthetic this$0:Lcom/android/camera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/ActivityBase$6;->this$0:Lcom/android/camera/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/camera/ActivityBase$6;->accept(Ljava/util/HashMap;)V

    return-void
.end method

.method public accept(Ljava/util/HashMap;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ActivityBase$6;->this$0:Lcom/android/camera/ActivityBase;

    invoke-static {p0, p1}, Lcom/android/camera/ActivityBase;->access$202(Lcom/android/camera/ActivityBase;Ljava/util/HashMap;)Ljava/util/HashMap;

    return-void
.end method
