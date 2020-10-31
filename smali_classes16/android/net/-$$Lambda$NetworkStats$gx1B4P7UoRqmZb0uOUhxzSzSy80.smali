.class public final synthetic Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(II[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;->f$0:I

    iput p2, p0, Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;->f$1:I

    iput-object p3, p0, Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget v0, p0, Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;->f$0:I

    iget v1, p0, Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;->f$1:I

    iget-object v2, p0, Landroid/net/-$$Lambda$NetworkStats$gx1B4P7UoRqmZb0uOUhxzSzSy80;->f$2:[Ljava/lang/String;

    check-cast p1, Landroid/net/NetworkStats$Entry;

    invoke-static {v0, v1, v2, p1}, Landroid/net/NetworkStats;->lambda$filter$2(II[Ljava/lang/String;Landroid/net/NetworkStats$Entry;)Z

    move-result p1

    return p1
.end method
