.class public final synthetic Landroid/telephony/-$$Lambda$DataFailCause$djkZSxdG-s-w2L5rQKiGu6OudyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/-$$Lambda$DataFailCause$djkZSxdG-s-w2L5rQKiGu6OudyY;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    iget v0, p0, Landroid/telephony/-$$Lambda$DataFailCause$djkZSxdG-s-w2L5rQKiGu6OudyY;->f$0:I

    invoke-static {v0, p1}, Landroid/telephony/DataFailCause;->lambda$isRadioRestartFailure$0(II)Z

    move-result p1

    return p1
.end method
