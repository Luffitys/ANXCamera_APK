.class public abstract Lcom/android/camera/resource/BaseResourceItem;
.super Ljava/lang/Object;
.source "BaseResourceItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/resource/BaseResourceItem$ResourceState;
    }
.end annotation


# static fields
.field public static final STATE_DOWNLOADING:I = 0x2

.field public static final STATE_NATIVE_EXISTS:I = 0x63

.field public static final STATE_NEED_DOWNLOAD:I = 0x1


# instance fields
.field public archivesPath:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract fillDetailData(Lorg/json/JSONObject;)V
.end method

.method public abstract onDecompressFinished(Ljava/lang/String;)V
.end method

.method public abstract parseSummaryData(Lorg/json/JSONObject;I)V
.end method

.method public abstract simpleVerification(Ljava/lang/String;)Z
.end method
