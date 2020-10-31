.class Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RelroFileCreator"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 11

    const-string v0, "failed to create relro file"

    const-string v1, "error notifying update service"

    const/4 v2, 0x0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v3

    const/4 v4, 0x0

    :try_start_e
    array-length v5, p0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_af

    aget-object v5, p0, v4

    if-eqz v5, :cond_af

    const/4 v5, 0x1

    aget-object v6, p0, v5

    if-nez v6, :cond_1d

    goto/16 :goto_af

    :cond_1d
    aget-object v6, p0, v4

    aget-object v5, p0, v5

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RelroFileCreator (64bit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "), package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " library: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$100()Z

    move-result v7

    if-nez v7, :cond_75

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "can\'t create relro file; address space not reserved"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_e .. :try_end_58} :catchall_e8

    :try_start_58
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_60

    goto :goto_68

    :catch_60
    move-exception v7

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_68
    if-nez v2, :cond_71

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_75
    :try_start_75
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual {v7, v6, v8, v9}, Landroid/app/ActivityThread;->getPackageInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;I)Landroid/app/LoadedApk;

    move-result-object v7

    nop

    if-eqz v3, :cond_85

    const-string v8, "/data/misc/shared_relro/libwebviewchromium64.relro"

    goto :goto_87

    :cond_85
    const-string v8, "/data/misc/shared_relro/libwebviewchromium32.relro"

    :goto_87
    invoke-virtual {v7}, Landroid/app/LoadedApk;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/webkit/WebViewLibraryLoader;->nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v8
    :try_end_8f
    .catchall {:try_start_75 .. :try_end_8f} :catchall_e8

    move v2, v8

    nop

    :try_start_91
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    invoke-interface {v5}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_98
    .catch Landroid/os/RemoteException; {:try_start_91 .. :try_end_98} :catch_99

    goto :goto_a1

    :catch_99
    move-exception v5

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a1
    if-nez v2, :cond_aa

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    nop

    return-void

    :cond_af
    :goto_af
    :try_start_af
    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid RelroFileCreator args: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_af .. :try_end_cb} :catchall_e8

    :try_start_cb
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v5

    invoke-interface {v5}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_d2} :catch_d3

    goto :goto_db

    :catch_d3
    move-exception v5

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_db
    if-nez v2, :cond_e4

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    return-void

    :catchall_e8
    move-exception v5

    :try_start_e9
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateServiceUnchecked()Landroid/webkit/IWebViewUpdateService;

    move-result-object v6

    invoke-interface {v6}, Landroid/webkit/IWebViewUpdateService;->notifyRelroCreationCompleted()V
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_e9 .. :try_end_f0} :catch_f1

    goto :goto_f9

    :catch_f1
    move-exception v6

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f9
    if-nez v2, :cond_102

    # getter for: Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    throw v5
.end method
