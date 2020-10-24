.class public final synthetic Lcom/android/zxing/OooO0o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic OooO00o:Lcom/android/zxing/QrDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/QrDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/OooO0o0;->OooO00o:Lcom/android/zxing/QrDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/OooO0o0;->OooO00o:Lcom/android/zxing/QrDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {p0, p1}, Lcom/android/zxing/QrDecoder;->OooO0O0(Lcom/android/zxing/PreviewImage;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
