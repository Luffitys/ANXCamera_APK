.class public abstract Lcom/bumptech/glide/load/engine/o;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final ALL:Lcom/bumptech/glide/load/engine/o;

.field public static final AUTOMATIC:Lcom/bumptech/glide/load/engine/o;

.field public static final DATA:Lcom/bumptech/glide/load/engine/o;

.field public static final NONE:Lcom/bumptech/glide/load/engine/o;

.field public static final RESOURCE:Lcom/bumptech/glide/load/engine/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/j;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/j;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/o;->ALL:Lcom/bumptech/glide/load/engine/o;

    new-instance v0, Lcom/bumptech/glide/load/engine/k;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/k;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/o;->NONE:Lcom/bumptech/glide/load/engine/o;

    new-instance v0, Lcom/bumptech/glide/load/engine/l;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/l;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/o;->DATA:Lcom/bumptech/glide/load/engine/o;

    new-instance v0, Lcom/bumptech/glide/load/engine/m;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/m;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/o;->RESOURCE:Lcom/bumptech/glide/load/engine/o;

    new-instance v0, Lcom/bumptech/glide/load/engine/n;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/n;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/o;->AUTOMATIC:Lcom/bumptech/glide/load/engine/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/bumptech/glide/load/DataSource;)Z
.end method

.method public abstract a(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z
.end method

.method public abstract ng()Z
.end method

.method public abstract og()Z
.end method
