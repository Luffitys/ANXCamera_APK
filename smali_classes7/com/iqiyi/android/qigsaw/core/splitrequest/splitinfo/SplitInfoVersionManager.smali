.class interface abstract Lcom/iqiyi/android/qigsaw/core/splitrequest/splitinfo/SplitInfoVersionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SPLIT_ROOT_DIR_NAME:Ljava/lang/String; = "split_info_version"


# virtual methods
.method public abstract getCurrentVersion()Ljava/lang/String;
.end method

.method public abstract getDefaultVersion()Ljava/lang/String;
.end method

.method public abstract getRootDir()Ljava/io/File;
.end method

.method public abstract updateVersion(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
.end method
