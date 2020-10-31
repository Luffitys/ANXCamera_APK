.class public Lcom/miui/internal/log/message/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/log/message/MessageFactory$MessageCache;
    }
.end annotation


# static fields
.field private static final MAX_RECYCLED:I = 0xa

.field private static final TAG:Ljava/lang/String; = "MessageFactory"

.field private static mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/miui/internal/log/message/MessageFactory$MessageCache<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/internal/log/message/MessageFactory;->mCacheMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Ljava/lang/Class;)Lcom/miui/internal/log/message/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/internal/log/message/Message;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/miui/internal/log/message/MessageFactory;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;

    if-nez v0, :cond_15

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->createInstance(Ljava/lang/Class;I)Lcom/miui/internal/log/message/MessageFactory$MessageCache;

    move-result-object v0

    sget-object v1, Lcom/miui/internal/log/message/MessageFactory;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    invoke-virtual {v0}, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->obtain()Lcom/miui/internal/log/message/Message;

    move-result-object v1

    return-object v1
.end method

.method static recycle(Lcom/miui/internal/log/message/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/miui/internal/log/message/Message;",
            ">(TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/miui/internal/log/message/MessageFactory;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/MessageFactory$MessageCache;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Lcom/miui/internal/log/message/MessageFactory$MessageCache;->recycle(Lcom/miui/internal/log/message/Message;)V

    :cond_11
    return-void
.end method
