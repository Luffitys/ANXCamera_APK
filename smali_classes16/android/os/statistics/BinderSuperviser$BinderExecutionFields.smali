.class public Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;
.super Landroid/os/statistics/MicroscopicEvent$RootEventFields;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderExecutionFields"
.end annotation


# static fields
.field private static final FIELD_CALLING_PID:Ljava/lang/String; = "callingPid"

.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "interface"


# instance fields
.field public callingPid:I

.field public code:I

.field public interfaceDescriptor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_15

    # invokes: Landroid/os/statistics/BinderSuperviser;->getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0}, Landroid/os/statistics/BinderSuperviser;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    :cond_15
    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_1d

    const-string v1, ""

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    :cond_1d
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->code:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->callingPid:I

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->code:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->callingPid:I

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string v0, "interface"

    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "code"

    iget v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->code:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "callingPid"

    iget v1, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->callingPid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderExecutionFields;->callingPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
