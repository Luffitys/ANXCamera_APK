.class Lmiuix/animation/utils/ObjectPool$Cache$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lmiuix/animation/utils/ObjectPool$Cache;


# direct methods
.method constructor <init>(Lmiuix/animation/utils/ObjectPool$Cache;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/utils/ObjectPool$Cache$1;->this$0:Lmiuix/animation/utils/ObjectPool$Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lmiuix/animation/utils/ObjectPool$Cache$1;->this$0:Lmiuix/animation/utils/ObjectPool$Cache;

    invoke-virtual {p0}, Lmiuix/animation/utils/ObjectPool$Cache;->shrink()V

    return-void
.end method
