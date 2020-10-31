.class public final synthetic Landroid/app/slice/-$$Lambda$SliceQuery$fdDPNErwIni-vCQ6k-MlGGBunoE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/app/slice/SliceItem;


# direct methods
.method public synthetic constructor <init>(Landroid/app/slice/SliceItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/slice/-$$Lambda$SliceQuery$fdDPNErwIni-vCQ6k-MlGGBunoE;->f$0:Landroid/app/slice/SliceItem;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Landroid/app/slice/-$$Lambda$SliceQuery$fdDPNErwIni-vCQ6k-MlGGBunoE;->f$0:Landroid/app/slice/SliceItem;

    check-cast p1, Landroid/app/slice/SliceItem;

    invoke-static {v0, p1}, Landroid/app/slice/SliceQuery;->lambda$contains$0(Landroid/app/slice/SliceItem;Landroid/app/slice/SliceItem;)Z

    move-result p1

    return p1
.end method
