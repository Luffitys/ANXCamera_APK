.class public final synthetic Lcom/android/zxing/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic ub:Lcom/android/zxing/QrDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/QrDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/d;->ub:Lcom/android/zxing/QrDecoder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/d;->ub:Lcom/android/zxing/QrDecoder;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/zxing/QrDecoder;->m(Ljava/lang/String;)V

    return-void
.end method
