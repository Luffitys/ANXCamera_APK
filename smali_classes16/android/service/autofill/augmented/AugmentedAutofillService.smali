.class public abstract Landroid/service/autofill/augmented/AugmentedAutofillService;
.super Landroid/app/Service;
.source "AugmentedAutofillService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;,
        Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;
    }
.end annotation


# static fields
.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.augmented.AugmentedAutofillService"

.field private static final TAG:Ljava/lang/String;

.field static sDebug:Z

.field static sVerbose:Z


# instance fields
.field private mAutofillProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

.field private mHandler:Landroid/os/Handler;

.field private mServiceComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/service/autofill/augmented/AugmentedAutofillService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/service/autofill/augmented/AugmentedAutofillService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnDestroyAllFillWindowsRequest()V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroid/service/autofill/augmented/AugmentedAutofillService;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    return-void
.end method

.method static synthetic access$300(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnDisconnected()V

    return-void
.end method

.method static synthetic access$400(Landroid/service/autofill/augmented/AugmentedAutofillService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnConnected(ZZ)V

    return-void
.end method

.method private handleOnConnected(ZZ)V
    .registers 6

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_24

    :cond_6
    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnConnected(): debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", verbose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    sput-boolean p1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    sput-boolean p2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sVerbose:Z

    invoke-virtual {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->onConnected()V

    return-void
.end method

.method private handleOnDestroyAllFillWindowsRequest()V
    .registers 8

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_58

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    if-nez v3, :cond_32

    sget-object v4, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No proxy for session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    # getter for: Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;
    invoke-static {v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->access$1000(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v4

    if-eqz v4, :cond_52

    :try_start_38
    # getter for: Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;
    invoke-static {v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->access$1000(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/autofill/augmented/IFillCallback;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_49

    # getter for: Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mCallback:Landroid/service/autofill/augmented/IFillCallback;
    invoke-static {v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->access$1000(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/service/autofill/augmented/IFillCallback;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/autofill/augmented/IFillCallback;->cancel()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_49} :catch_4a

    :cond_49
    goto :goto_52

    :catch_4a
    move-exception v4

    sget-object v5, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    const-string v6, "failed to check current pending request status"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_52
    :goto_52
    # invokes: Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->destroy()V
    invoke-static {v3}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->access$1100(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_58
    iget-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    :cond_60
    return-void
.end method

.method private handleOnDisconnected()V
    .registers 1

    invoke-virtual {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->onDisconnected()V

    return-void
.end method

.method private handleOnFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V
    .registers 31

    move-object/from16 v1, p0

    move/from16 v15, p1

    move-object/from16 v14, p10

    iget-object v0, v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    :cond_11
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v13

    invoke-static {v13}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v12

    iget-object v0, v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    if-nez v0, :cond_57

    new-instance v16, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    iget-object v6, v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->mServiceComponentName:Landroid/content/ComponentName;

    const/16 v17, 0x0

    move-object/from16 v2, v16

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v18, v12

    move-object/from16 v12, p10

    move-object/from16 v19, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;-><init>(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;Landroid/service/autofill/augmented/AugmentedAutofillService$1;)V

    move-object/from16 v0, v16

    iget-object v2, v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v15, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object v6, v0

    move-object/from16 v5, v18

    goto :goto_81

    :cond_57
    move-object/from16 v18, v12

    move-object/from16 v19, v13

    sget-boolean v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v2, :cond_75

    sget-object v2, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reusing proxy for session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, v18

    # invokes: Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->update(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V
    invoke-static {v0, v2, v3, v4, v5}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->access$900(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/service/autofill/augmented/IFillCallback;Landroid/os/CancellationSignal;)V

    move-object v6, v0

    :goto_81
    move-object/from16 v7, v19

    :try_start_83
    invoke-interface {v4, v7}, Landroid/service/autofill/augmented/IFillCallback;->onCancellable(Landroid/os/ICancellationSignal;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8d

    :catch_87
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_8d
    iput-object v6, v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    new-instance v0, Landroid/service/autofill/augmented/FillRequest;

    move-object/from16 v8, p9

    invoke-direct {v0, v6, v8}, Landroid/service/autofill/augmented/FillRequest;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;Landroid/view/inputmethod/InlineSuggestionsRequest;)V

    new-instance v9, Landroid/service/autofill/augmented/FillController;

    invoke-direct {v9, v6}, Landroid/service/autofill/augmented/FillController;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V

    new-instance v10, Landroid/service/autofill/augmented/FillCallback;

    invoke-direct {v10, v6}, Landroid/service/autofill/augmented/FillCallback;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V

    invoke-virtual {v1, v0, v5, v9, v10}, Landroid/service/autofill/augmented/AugmentedAutofillService;->onFillRequest(Landroid/service/autofill/augmented/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/augmented/FillController;Landroid/service/autofill/augmented/FillCallback;)V

    return-void
.end method

.method private handleOnUnbind()V
    .registers 8

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_10

    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUnbind(): no proxy to destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void

    :cond_11
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sget-boolean v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v1, :cond_35

    sget-object v1, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUnbind(): destroying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " proxies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const/4 v1, 0x0

    :goto_36
    if-ge v1, v0, :cond_5e

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    :try_start_40
    # invokes: Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->destroy()V
    invoke-static {v2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->access$1100(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_5b

    :catch_44
    move-exception v3

    sget-object v4, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_5e
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    iput-object v1, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    return-void
.end method

.method public static synthetic lambda$zZAmNDLQX4rUV_yTGug25y4E6gA(Landroid/service/autofill/augmented/AugmentedAutofillService;)V
    .registers 1

    invoke-direct {p0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->handleOnUnbind()V

    return-void
.end method


# virtual methods
.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string v0, "Service component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-static {v0}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const-string v1, "Number proxies: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_47

    iget-object v2, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxies:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ") SessionId="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  "

    invoke-virtual {v3, v4, p2}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_47
    invoke-virtual {p0, p2, p3}, Landroid/service/autofill/augmented/AugmentedAutofillService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ": nothing to dump"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .registers 3

    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Landroid/service/autofill/augmented/AugmentedAutofillService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    if-nez v0, :cond_c

    const/4 v1, 0x0

    return-object v1

    :cond_c
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;

    move-result-object v1

    return-object v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mServiceComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.autofill.augmented.AugmentedAutofillService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    new-instance v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;-><init>(Landroid/service/autofill/augmented/AugmentedAutofillService;Landroid/service/autofill/augmented/AugmentedAutofillService$1;)V

    return-object v0

    :cond_19
    sget-object v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to bind to wrong intent (should be android.service.autofill.augmented.AugmentedAutofillService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public onConnected()V
    .registers 1

    return-void
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;

    invoke-static {v3}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    return-void
.end method

.method public onDisconnected()V
    .registers 1

    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/augmented/FillRequest;Landroid/os/CancellationSignal;Landroid/service/autofill/augmented/FillController;Landroid/service/autofill/augmented/FillCallback;)V
    .registers 5

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mHandler:Landroid/os/Handler;

    sget-object v1, Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$zZAmNDLQX4rUV_yTGug25y4E6gA;->INSTANCE:Landroid/service/autofill/augmented/-$$Lambda$AugmentedAutofillService$zZAmNDLQX4rUV_yTGug25y4E6gA;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public final requestAutofill(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;)Z
    .registers 6

    iget-object v0, p0, Landroid/service/autofill/augmented/AugmentedAutofillService;->mAutofillProxyForLastRequest:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    iget-object v2, v0, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    # getter for: Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->mFocusedId:Landroid/view/autofill/AutofillId;
    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->access$600(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Landroid/view/autofill/AutofillId;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_22

    :cond_18
    :try_start_18
    # invokes: Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->requestAutofill()Z
    invoke-static {v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->access$700(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)Z

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    :catch_1d
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return v1

    :cond_22
    :goto_22
    return v1
.end method
