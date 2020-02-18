.class public Lcom/bumptech/glide/request/a/c$a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final _l:I = 0x12c


# instance fields
.field private Zl:Z

.field private final durationMillis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/a/c$a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/a/c$a;->durationMillis:I

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/request/a/c;
    .locals 2

    new-instance v0, Lcom/bumptech/glide/request/a/c;

    iget v1, p0, Lcom/bumptech/glide/request/a/c$a;->durationMillis:I

    iget-boolean p0, p0, Lcom/bumptech/glide/request/a/c$a;->Zl:Z

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/request/a/c;-><init>(IZ)V

    return-object v0
.end method

.method public setCrossFadeEnabled(Z)Lcom/bumptech/glide/request/a/c$a;
    .locals 0

    iput-boolean p1, p0, Lcom/bumptech/glide/request/a/c$a;->Zl:Z

    return-object p0
.end method
