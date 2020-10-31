.class public Landroid/os/statistics/BinderSuperviser$BinderCallFields;
.super Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;
.source "BinderSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/BinderSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinderCallFields"
.end annotation


# static fields
.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_INTERFACE_DESCRIPTOR:Ljava/lang/String; = "interface"

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"

.field private static sBinderProxyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public code:I

.field public interfaceDescriptor:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public stackTrace:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;-><init>(Z)V

    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->packageName:Ljava/lang/String;

    return-void
.end method

.method private static initClasses()V
    .registers 1

    sget-object v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->sBinderProxyClass:Ljava/lang/Class;

    if-nez v0, :cond_11

    :try_start_4
    const-string v0, "android.os.BinderProxy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->sBinderProxyClass:Ljava/lang/Class;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_11
    :goto_11
    return-void
.end method

.method private static isJavaBinderCall([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    array-length v1, p0

    if-eqz v1, :cond_14

    if-eqz p1, :cond_14

    array-length v1, p1

    if-nez v1, :cond_c

    goto :goto_14

    :cond_c
    aget-object v1, p1, v0

    sget-object v2, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->sBinderProxyClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    :cond_14
    :goto_14
    return v0
.end method


# virtual methods
.method public fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->code:I

    if-eqz v0, :cond_1b

    # invokes: Landroid/os/statistics/BinderSuperviser;->getInterfaceDescriptor(Ljava/lang/Object;)Ljava/lang/String;
    invoke-static {v0}, Landroid/os/statistics/BinderSuperviser;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    :cond_1b
    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    if-nez v1, :cond_23

    const-string v1, ""

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    :cond_23
    return-void
.end method

.method public fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 9

    invoke-static {}, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->initClasses()V

    invoke-static {p2, p1}, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->isJavaBinderCall([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_1b

    aget-object v2, p1, v0

    sget-object v3, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->sBinderProxyClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_18

    aput-object v1, p1, v0

    aput-object v1, p2, v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    invoke-static {p2, p1, v1}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    goto :goto_4b

    :cond_22
    invoke-static {p3}, Landroid/os/statistics/NativeBackTrace;->resolve(Landroid/os/statistics/NativeBackTrace;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_45

    const/4 v2, 0x0

    :goto_29
    array-length v3, v0

    if-ge v2, v3, :cond_45

    aget-object v3, v0, v2

    if-eqz v3, :cond_45

    const-string v4, "BinderSuperviser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v4, "libbinder.so"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    :cond_40
    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_45
    invoke-static {p2, p1, v0}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    :goto_4b
    if-eqz p3, :cond_50

    invoke-virtual {p3}, Landroid/os/statistics/NativeBackTrace;->dispose()V

    :cond_50
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    :cond_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->code:I

    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    if-nez v0, :cond_21

    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    :cond_21
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string v0, "interface"

    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "code"

    iget v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->code:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "stack"

    iget-object v1, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_22
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->interfaceDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->code:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/statistics/BinderSuperviser$BinderCallFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
