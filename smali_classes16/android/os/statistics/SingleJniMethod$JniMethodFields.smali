.class public Landroid/os/statistics/SingleJniMethod$JniMethodFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "SingleJniMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SingleJniMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JniMethodFields"
.end annotation


# static fields
.field private static final FIELD_STACK:Ljava/lang/String; = "stack"

.field private static final exceptionalClassMethodSimpleNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final exceptionalJniMethodFullNames:[Ljava/lang/String;


# instance fields
.field public stackTrace:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "java.lang.Object.wait"

    const-string v1, "java.lang.Object.notify"

    const-string v2, "java.lang.Object.notifyAll"

    const-string v3, "java.lang.Thread.sleep"

    const-string v4, "android.os.BinderProxy.transactNative"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalJniMethodFullNames:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>(Z)V

    return-void
.end method

.method private static buildStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)[Ljava/lang/String;
    .registers 14

    sget-object v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    sget-object v0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_c
    sget-object v2, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalJniMethodFullNames:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_10
    if-ge v4, v3, :cond_45

    aget-object v5, v2, v4
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_47

    :try_start_14
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sget-object v10, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-nez v10, :cond_3d

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v11

    sget-object v11, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_40} :catch_41
    .catchall {:try_start_14 .. :try_end_40} :catchall_47

    goto :goto_42

    :catch_41
    move-exception v6

    :goto_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_45
    :try_start_45
    monitor-exit v0

    goto :goto_4a

    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_47

    throw v1

    :cond_4a
    :goto_4a
    if-eqz p0, :cond_85

    array-length v0, p0

    if-eqz v0, :cond_85

    if-eqz p1, :cond_85

    array-length v0, p1

    if-nez v0, :cond_55

    goto :goto_85

    :cond_55
    aget-object v0, p0, v1

    aget-object v1, p1, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.os.statistics."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    sget-object v2, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v2

    :cond_68
    sget-object v2, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->exceptionalClassMethodSimpleNames:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_7f

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    sget-object v3, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v3

    :cond_7f
    const/4 v3, 0x0

    invoke-static {p0, p1, v3}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_85
    :goto_85
    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 5

    invoke-static {p2, p1}, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->buildStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->readFromParcel(Landroid/os/Parcel;)V

    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    if-nez v0, :cond_f

    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    :cond_f
    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v0, "stack"

    iget-object v1, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_14
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/os/statistics/SingleJniMethod$JniMethodFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
