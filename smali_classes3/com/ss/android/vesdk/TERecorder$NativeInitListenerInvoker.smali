.class Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;
.super Ljava/lang/Object;
.source "TERecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeInitListenerInvoker"
.end annotation


# instance fields
.field private mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

.field private mRet:I


# direct methods
.method constructor <init>(Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;I)V
    .locals 0
    .param p1    # Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;->mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    iput p2, p0, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;->mRet:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;->mListener:Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;

    iget p0, p0, Lcom/ss/android/vesdk/TERecorder$NativeInitListenerInvoker;->mRet:I

    const-string v1, "Native init"

    invoke-interface {v0, p0, v1}, Lcom/ss/android/vesdk/VEListener$VERecorderNativeInitListener;->onNativeInit(ILjava/lang/String;)V

    return-void
.end method
