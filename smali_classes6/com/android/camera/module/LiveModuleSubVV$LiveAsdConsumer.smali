.class Lcom/android/camera/module/LiveModuleSubVV$LiveAsdConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/LiveModuleSubVV;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/LiveModuleSubVV;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/LiveModuleSubVV$LiveAsdConsumer;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/LiveModuleSubVV;Lcom/android/camera/module/LiveModuleSubVV$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/LiveModuleSubVV$LiveAsdConsumer;-><init>(Lcom/android/camera/module/LiveModuleSubVV;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/LiveModuleSubVV$LiveAsdConsumer;->this$0:Lcom/android/camera/module/LiveModuleSubVV;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/module/LiveModuleSubVV;->access$500(Lcom/android/camera/module/LiveModuleSubVV;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/LiveModuleSubVV$LiveAsdConsumer;->accept(Ljava/lang/Integer;)V

    return-void
.end method
