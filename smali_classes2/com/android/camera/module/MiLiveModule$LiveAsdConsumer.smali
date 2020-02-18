.class Lcom/android/camera/module/MiLiveModule$LiveAsdConsumer;
.super Ljava/lang/Object;
.source "MiLiveModule.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MiLiveModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveAsdConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule$LiveAsdConsumer;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/MiLiveModule;Lcom/android/camera/module/MiLiveModule$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/MiLiveModule$LiveAsdConsumer;-><init>(Lcom/android/camera/module/MiLiveModule;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/MiLiveModule$LiveAsdConsumer;->accept(Ljava/lang/Integer;)V

    return-void
.end method
