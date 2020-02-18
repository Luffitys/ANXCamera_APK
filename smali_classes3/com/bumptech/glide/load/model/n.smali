.class public interface abstract Lcom/bumptech/glide/load/model/n;
.super Ljava/lang/Object;
.source "Headers.java"


# static fields
.field public static final DEFAULT:Lcom/bumptech/glide/load/model/n;

.field public static final NONE:Lcom/bumptech/glide/load/model/n;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/model/m;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/m;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/model/n;->NONE:Lcom/bumptech/glide/load/model/n;

    new-instance v0, Lcom/bumptech/glide/load/model/p$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/model/p$a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/model/p$a;->build()Lcom/bumptech/glide/load/model/p;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/model/n;->DEFAULT:Lcom/bumptech/glide/load/model/n;

    return-void
.end method


# virtual methods
.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
