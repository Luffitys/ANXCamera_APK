.class Lcom/android/camera/features/mimoji2/module/MimojiModule$LiveAsdConsumer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field final synthetic this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/features/mimoji2/module/MimojiModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$LiveAsdConsumer;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/features/mimoji2/module/MimojiModule;Lcom/android/camera/features/mimoji2/module/MimojiModule$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimoji2/module/MimojiModule$LiveAsdConsumer;-><init>(Lcom/android/camera/features/mimoji2/module/MimojiModule;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/module/MimojiModule$LiveAsdConsumer;->this$0:Lcom/android/camera/features/mimoji2/module/MimojiModule;

    invoke-static {p0, p1}, Lcom/android/camera/features/mimoji2/module/MimojiModule;->access$1400(Lcom/android/camera/features/mimoji2/module/MimojiModule;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimoji2/module/MimojiModule$LiveAsdConsumer;->accept(Ljava/lang/Integer;)V

    return-void
.end method
