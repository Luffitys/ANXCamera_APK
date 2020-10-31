.class Lmiui/animation/utils/ObjectPool$Cache$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/animation/utils/ObjectPool$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/animation/utils/ObjectPool$Cache;


# direct methods
.method constructor <init>(Lmiui/animation/utils/ObjectPool$Cache;)V
    .registers 2

    iput-object p1, p0, Lmiui/animation/utils/ObjectPool$Cache$1;->this$0:Lmiui/animation/utils/ObjectPool$Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmiui/animation/utils/ObjectPool$Cache$1;->this$0:Lmiui/animation/utils/ObjectPool$Cache;

    invoke-virtual {v0}, Lmiui/animation/utils/ObjectPool$Cache;->shrink()V

    return-void
.end method
