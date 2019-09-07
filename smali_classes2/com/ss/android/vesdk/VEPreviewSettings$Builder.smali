.class public Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
.super Ljava/lang/Object;
.source "VEPreviewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/VEPreviewSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VEPreviewSettings;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    return-void
.end method

.method public constructor <init>(Lcom/ss/android/vesdk/VEPreviewSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    return-void
.end method


# virtual methods
.method public build()Lcom/ss/android/vesdk/VEPreviewSettings;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    return-object p0
.end method

.method public enableAudioRecord(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$102(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public setAsyncDetection(Z)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .locals 1

    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$202(Lcom/ss/android/vesdk/VEPreviewSettings;Z)Z

    return-object p0
.end method

.method public setRenderSize(Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VEPreviewSettings$Builder;
    .locals 1
    .param p1    # Lcom/ss/android/vesdk/VESize;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ss/android/vesdk/VEPreviewSettings$Builder;->mExportPreviewSettings:Lcom/ss/android/vesdk/VEPreviewSettings;

    invoke-static {v0, p1}, Lcom/ss/android/vesdk/VEPreviewSettings;->access$002(Lcom/ss/android/vesdk/VEPreviewSettings;Lcom/ss/android/vesdk/VESize;)Lcom/ss/android/vesdk/VESize;

    return-object p0
.end method
