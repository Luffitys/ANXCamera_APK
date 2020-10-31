.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;
.super Landroid/os/Binder;
.source "ISoundTriggerCallback.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.soundtrigger_middleware.ISoundTriggerCallback"

.field static final TRANSACTION_onModuleDied:I = 0x4

.field static final TRANSACTION_onPhraseRecognition:I = 0x2

.field static final TRANSACTION_onRecognition:I = 0x1

.field static final TRANSACTION_onRecognitionAvailabilityChange:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 1

    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;->sDefaultImpl:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    :cond_e
    const-string/jumbo v0, "onModuleDied"

    return-object v0

    :cond_12
    const-string/jumbo v0, "onRecognitionAvailabilityChange"

    return-object v0

    :cond_16
    const-string/jumbo v0, "onPhraseRecognition"

    return-object v0

    :cond_1a
    const-string/jumbo v0, "onRecognition"

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Z
    .registers 3

    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;->sDefaultImpl:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-nez v0, :cond_c

    if-eqz p0, :cond_a

    sput-object p0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;->sDefaultImpl:Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.media.soundtrigger_middleware.ISoundTriggerCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_33

    const/4 v2, 0x3

    if-eq p1, v2, :cond_23

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1c

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :cond_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onModuleDied()V

    return v1

    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onRecognitionAvailabilityChange(Z)V

    return v1

    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_49

    sget-object v3, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger_middleware/PhraseRecognitionEvent;

    goto :goto_4a

    :cond_49
    const/4 v3, 0x0

    :goto_4a
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onPhraseRecognition(ILandroid/media/soundtrigger_middleware/PhraseRecognitionEvent;)V

    return v1

    :cond_4e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_64

    sget-object v3, Landroid/media/soundtrigger_middleware/RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger_middleware/RecognitionEvent;

    goto :goto_65

    :cond_64
    const/4 v3, 0x0

    :goto_65
    invoke-virtual {p0, v2, v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onRecognition(ILandroid/media/soundtrigger_middleware/RecognitionEvent;)V

    return v1
.end method
