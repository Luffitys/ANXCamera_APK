.class public final synthetic Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;->f$2:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Landroid/app/slice/-$$Lambda$SliceQuery$cG9kHpHpv4nbm7p3sCvlkQGlqQw;->f$2:[Ljava/lang/String;

    check-cast p1, Landroid/app/slice/SliceItem;

    invoke-static {v0, v1, v2, p1}, Landroid/app/slice/SliceQuery;->lambda$find$2(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/slice/SliceItem;)Z

    move-result p1

    return p1
.end method
