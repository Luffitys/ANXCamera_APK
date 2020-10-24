.class public interface abstract Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$UploadProgress;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$UploadProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$UploadProgress$1;

    invoke-direct {v0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$UploadProgress$1;-><init>()V

    sput-object v0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$UploadProgress;->DEFAULT:Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$UploadProgress;

    return-void
.end method


# virtual methods
.method public abstract onUpload(JJ)V
.end method
