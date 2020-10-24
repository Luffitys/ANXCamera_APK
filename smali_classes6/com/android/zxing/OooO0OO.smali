.class public final synthetic Lcom/android/zxing/OooO0OO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic OooO00o:Lcom/android/zxing/HandGestureDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/zxing/HandGestureDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/zxing/OooO0OO;->OooO00o:Lcom/android/zxing/HandGestureDecoder;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/zxing/OooO0OO;->OooO00o:Lcom/android/zxing/HandGestureDecoder;

    check-cast p1, Lcom/android/zxing/PreviewImage;

    invoke-virtual {p0, p1}, Lcom/android/zxing/HandGestureDecoder;->OooO0O0(Lcom/android/zxing/PreviewImage;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
