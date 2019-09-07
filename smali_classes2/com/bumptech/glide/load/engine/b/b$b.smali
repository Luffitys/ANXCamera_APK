.class public interface abstract Lcom/bumptech/glide/load/engine/b/b$b;
.super Ljava/lang/Object;
.source "GlideExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/bumptech/glide/load/engine/b/b$b;

.field public static final IGNORE:Lcom/bumptech/glide/load/engine/b/b$b;

.field public static final LOG:Lcom/bumptech/glide/load/engine/b/b$b;

.field public static final xr:Lcom/bumptech/glide/load/engine/b/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/c;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/b/b$b;->IGNORE:Lcom/bumptech/glide/load/engine/b/b$b;

    new-instance v0, Lcom/bumptech/glide/load/engine/b/d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/d;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/b/b$b;->LOG:Lcom/bumptech/glide/load/engine/b/b$b;

    new-instance v0, Lcom/bumptech/glide/load/engine/b/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b/e;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/b/b$b;->xr:Lcom/bumptech/glide/load/engine/b/b$b;

    sget-object v0, Lcom/bumptech/glide/load/engine/b/b$b;->LOG:Lcom/bumptech/glide/load/engine/b/b$b;

    sput-object v0, Lcom/bumptech/glide/load/engine/b/b$b;->DEFAULT:Lcom/bumptech/glide/load/engine/b/b$b;

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/Throwable;)V
.end method
