.class public Lmiui/maml/data/WebServiceBinder;
.super Lmiui/maml/data/VariableBinder;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/WebServiceBinder$QueryThread;,
        Lmiui/maml/data/WebServiceBinder$AuthToken;,
        Lmiui/maml/data/WebServiceBinder$List;,
        Lmiui/maml/data/WebServiceBinder$Variable;,
        Lmiui/maml/data/WebServiceBinder$ResponseProtocol;,
        Lmiui/maml/data/WebServiceBinder$RequestMethod;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebServiceBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "WebServiceBinder"


# instance fields
.field private mAuthentication:Z

.field mContentStringVar:Lmiui/maml/data/IndexedVariable;

.field public mEncryptedUser:Ljava/lang/String;

.field mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

.field mErrorStringVar:Lmiui/maml/data/IndexedVariable;

.field private mLastQueryTime:J

.field private mList:Lmiui/maml/data/WebServiceBinder$List;

.field private mParamsFormatter:Lmiui/maml/util/TextFormatter;

.field private mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field private mQueryInProgress:Z

.field private mQueryThread:Ljava/lang/Thread;

.field mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field private mSecure:Z

.field public mSecurity:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field public mServiceToken:Ljava/lang/String;

.field mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

.field private mUpdateInterval:I

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$1000(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1200(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/data/WebServiceBinder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V

    return-void
.end method

.method static synthetic access$300(Lmiui/maml/data/WebServiceBinder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V

    return-void
.end method

.method static synthetic access$400(Lmiui/maml/data/WebServiceBinder;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/data/WebServiceBinder;)Z
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    return v0
.end method

.method static synthetic access$600(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseXml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lmiui/maml/data/WebServiceBinder;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    return p1
.end method

.method private canUseNetwork()Z
    .registers 4

    iget v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v2, 0x0

    if-nez v0, :cond_b

    return v2

    :cond_b
    if-ne v0, v1, :cond_18

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    :cond_18
    return v2
.end method

.method private handleException(Ljava/lang/Exception;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebServiceBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->setErrorString(Ljava/lang/String;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 15

    const-string v0, "WebServiceBinder"

    if-eqz p1, :cond_171

    const-string v1, "requestMethod"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v2, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    :cond_16
    const-string v2, "queryAtStart"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const-string v3, "uriExp"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v10

    const-string v3, "uriFormatExp"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    new-instance v12, Lmiui/maml/util/TextFormatter;

    const-string v3, "uri"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "uriFormat"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v3, "uriParas"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v12

    move-object v4, v2

    move-object v8, v10

    move-object v9, v11

    invoke-direct/range {v3 .. v9}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v12, p0, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    new-instance v3, Lmiui/maml/util/TextFormatter;

    const-string v4, "params"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "paramsFormat"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "paramsParas"

    invoke-interface {p1, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v2, v4, v5, v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    const/4 v3, -0x1

    const-string v4, "updateInterval"

    invoke-static {p1, v4, v3}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    const-string v3, "protocol"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/maml/data/WebServiceBinder;->parseProtocol(Ljava/lang/String;)V

    const-string v3, "authentication"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    const-string v3, "secure"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    const-string v3, "serviceID"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    const-string v3, "useNetwork"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_d6

    const-string v4, "all"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b9

    goto :goto_d6

    :cond_b9
    const-string v4, "wifi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c4

    iput v6, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto :goto_d9

    :cond_c4
    const-string v4, "none"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cf

    iput v5, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto :goto_d9

    :cond_cf
    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    goto :goto_d9

    :cond_d6
    :goto_d6
    const/4 v4, 0x2

    iput v4, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    :goto_d9
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_158

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".statusCode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v2, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".errorCode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v2, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".errorString"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    const-string v4, "dbgContentString"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_158

    new-instance v6, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".contentString"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v6, p0, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    :cond_158
    const-string v4, "List"

    invoke-static {p1, v4}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_170

    :try_start_160
    new-instance v5, Lmiui/maml/data/WebServiceBinder$List;

    iget-object v6, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v5, v4, v6}, Lmiui/maml/data/WebServiceBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v5, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;
    :try_end_169
    .catch Ljava/lang/IllegalArgumentException; {:try_start_160 .. :try_end_169} :catch_16a

    goto :goto_170

    :catch_16a
    move-exception v5

    const-string v6, "invalid List"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_170
    :goto_170
    return-void

    :cond_171
    const-string v1, "WebServiceBinder node is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseProtocol(Ljava/lang/String;)V
    .registers 3

    const-string v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_33

    :cond_d
    const-string v0, "json/obj"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_33

    :cond_1a
    const-string v0, "json/array"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_33

    :cond_27
    const-string v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    :cond_33
    :goto_33
    return-void
.end method

.method private processResponseJson(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    sget-object v2, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v1, v2, :cond_13

    new-instance v1, Lmiui/maml/util/JSONPath;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    move-object v0, v1

    goto :goto_1e

    :cond_13
    new-instance v1, Lmiui/maml/util/JSONPath;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONArray;)V

    move-object v0, v1

    :goto_1e
    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/VariableBinder$Variable;

    move-object v3, v2

    check-cast v3, Lmiui/maml/data/WebServiceBinder$Variable;

    iget-object v4, v3, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_24

    :cond_3d
    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    iget-object v1, v1, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_57

    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_57

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object v3, v1

    check-cast v3, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/json/JSONArray;)V
    :try_end_57
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_57} :catch_58

    :cond_57
    goto :goto_5c

    :catch_58
    move-exception v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V

    :goto_5c
    return-void
.end method

.method private processResponseXml(Ljava/lang/String;)V
    .registers 15

    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/ByteArrayInputStream;

    const-string v5, "utf-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v4

    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_2b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d .. :try_end_2b} :catch_d8
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_2b} :catch_ce
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_2b} :catch_c4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_2b} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_b0
    .catchall {:try_start_d .. :try_end_2b} :catchall_ae

    const-string v7, " :"

    const-string v8, "WebServiceBinder"

    if-eqz v6, :cond_6c

    :try_start_31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/VariableBinder$Variable;

    move-object v9, v6

    check-cast v9, Lmiui/maml/data/WebServiceBinder$Variable;
    :try_end_3a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_31 .. :try_end_3a} :catch_d8
    .catch Lorg/xml/sax/SAXException; {:try_start_31 .. :try_end_3a} :catch_ce
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_31 .. :try_end_3a} :catch_c4
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_b0
    .catchall {:try_start_31 .. :try_end_3a} :catchall_ae

    :try_start_3a
    iget-object v10, v9, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    sget-object v11, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v10, v4, v11}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_45
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_3a .. :try_end_45} :catch_46
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3a .. :try_end_45} :catch_d8
    .catch Lorg/xml/sax/SAXException; {:try_start_3a .. :try_end_45} :catch_ce
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3a .. :try_end_45} :catch_c4
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_45} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_b0
    .catchall {:try_start_3a .. :try_end_45} :catchall_ae

    goto :goto_6b

    :catch_46
    move-exception v10

    const/4 v11, 0x0

    :try_start_48
    invoke-virtual {v9, v11}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to get variable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v9, Lmiui/maml/data/WebServiceBinder$Variable;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6b
    goto :goto_27

    :cond_6c
    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;
    :try_end_6e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_48 .. :try_end_6e} :catch_d8
    .catch Lorg/xml/sax/SAXException; {:try_start_48 .. :try_end_6e} :catch_ce
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_48 .. :try_end_6e} :catch_c4
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_6e} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6e} :catch_b0
    .catchall {:try_start_48 .. :try_end_6e} :catchall_ae

    if-eqz v5, :cond_a7

    :try_start_70
    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    sget-object v6, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v5, v4, v6}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/NodeList;

    iget-object v6, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    invoke-virtual {v6, v5}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/w3c/dom/NodeList;)V
    :try_end_81
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_70 .. :try_end_81} :catch_82
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_70 .. :try_end_81} :catch_d8
    .catch Lorg/xml/sax/SAXException; {:try_start_70 .. :try_end_81} :catch_ce
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_70 .. :try_end_81} :catch_c4
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_81} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_81} :catch_b0
    .catchall {:try_start_70 .. :try_end_81} :catchall_ae

    goto :goto_a7

    :catch_82
    move-exception v5

    :try_start_83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fail to get list: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    # getter for: Lmiui/maml/data/WebServiceBinder$List;->mName:Ljava/lang/String;
    invoke-static {v9}, Lmiui/maml/data/WebServiceBinder$List;->access$000(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljavax/xml/xpath/XPathExpressionException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_83 .. :try_end_a7} :catch_d8
    .catch Lorg/xml/sax/SAXException; {:try_start_83 .. :try_end_a7} :catch_ce
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_83 .. :try_end_a7} :catch_c4
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_a7} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a7} :catch_b0
    .catchall {:try_start_83 .. :try_end_a7} :catchall_ae

    :cond_a7
    :goto_a7
    nop

    :try_start_a8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac

    :cond_ab
    :goto_ab
    goto :goto_e2

    :catch_ac
    move-exception v3

    goto :goto_e2

    :catchall_ae
    move-exception v3

    goto :goto_e3

    :catch_b0
    move-exception v3

    :try_start_b1
    invoke-direct {p0, v3}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_ae

    if-eqz v2, :cond_ab

    :try_start_b6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ac

    goto :goto_ab

    :catch_ba
    move-exception v3

    :try_start_bb
    invoke-direct {p0, v3}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_ae

    if-eqz v2, :cond_ab

    :try_start_c0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_ac

    goto :goto_ab

    :catch_c4
    move-exception v3

    :try_start_c5
    invoke-direct {p0, v3}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_ae

    if-eqz v2, :cond_ab

    :try_start_ca
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ac

    goto :goto_ab

    :catch_ce
    move-exception v3

    :try_start_cf
    invoke-direct {p0, v3}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_ae

    if-eqz v2, :cond_ab

    :try_start_d4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_ac

    goto :goto_ab

    :catch_d8
    move-exception v3

    :try_start_d9
    invoke-direct {p0, v3}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_ae

    if-eqz v2, :cond_ab

    :try_start_de
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_ac

    goto :goto_ab

    :goto_e2
    return-void

    :goto_e3
    if-eqz v2, :cond_eb

    :try_start_e5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9

    goto :goto_eb

    :catch_e9
    move-exception v4

    goto :goto_ec

    :cond_eb
    :goto_eb
    nop

    :goto_ec
    throw v3
.end method

.method private setErrorCode(I)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_8

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryThread error: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebServiceBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setErrorString(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private setStatusCode(I)V
    .registers 5

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_8

    int-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QueryThread status code: #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebServiceBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tryStartQuery()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_f

    iput-wide v2, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    :cond_f
    iget-wide v4, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_20

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    if-lez v2, :cond_23

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    :cond_20
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    :cond_23
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    :cond_15
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2f

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    iget-object v1, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    :cond_2f
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_3a

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    :cond_3a
    return-void
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 2

    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;

    move-result-object p1

    return-object p1
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/WebServiceBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/WebServiceBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method public pause()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    return-void
.end method

.method public processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V
    .registers 8

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "WebServiceBinder"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_11

    const-string v0, "no image element var"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    invoke-virtual {p1}, Lmiui/maml/util/net/SimpleRequest$StreamContent;->getStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder;->mVariables:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/WebServiceBinder$Variable;

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v3

    # invokes: Lmiui/maml/data/WebServiceBinder$Variable;->hasCache(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lmiui/maml/data/WebServiceBinder$Variable;->access$100(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v2, v0, v3}, Lmiui/maml/data/WebServiceBinder$Variable;->saveCache(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    goto :goto_48

    :cond_31
    const/4 v4, 0x0

    if-eqz v0, :cond_40

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_45

    const-string v5, "decoded bitmap is null"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_40
    const-string v5, "response stream is null"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    invoke-virtual {v2, v4}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    :goto_48
    invoke-static {v0}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void
.end method

.method public refresh()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    :cond_a
    return-void
.end method

.method public startQuery()V
    .registers 6

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v0

    const-string v2, "WebServiceBinder"

    if-nez v0, :cond_11

    const-string v0, "capability disabled: webservice"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    if-eqz v0, :cond_16

    return-void

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_2b

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v3, v4}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_2b
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    const-string v1, "cancel query because current network is forbidden by useNetwork config: "

    if-eqz v0, :cond_45

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5a
    iput-boolean v1, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    new-instance v0, Lmiui/maml/data/WebServiceBinder$QueryThread;

    invoke-direct {v0, p0}, Lmiui/maml/data/WebServiceBinder$QueryThread;-><init>(Lmiui/maml/data/WebServiceBinder;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
