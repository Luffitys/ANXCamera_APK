.class final Lio/reactivex/internal/functions/ObjectHelper$BiObjectPredicate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/BiPredicate;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p1, p2}, Lio/reactivex/internal/functions/ObjectHelper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
