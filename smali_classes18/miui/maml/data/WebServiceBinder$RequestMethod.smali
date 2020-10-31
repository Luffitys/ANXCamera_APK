.class final enum Lmiui/maml/data/WebServiceBinder$RequestMethod;
.super Ljava/lang/Enum;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiui/maml/data/WebServiceBinder$RequestMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field public static final enum GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field public static final enum INVALID:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field public static final enum POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/WebServiceBinder$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->INVALID:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    new-instance v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/WebServiceBinder$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    new-instance v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    const-string v1, "GET"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/WebServiceBinder$RequestMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    const/4 v1, 0x3

    new-array v1, v1, [Lmiui/maml/data/WebServiceBinder$RequestMethod;

    sget-object v5, Lmiui/maml/data/WebServiceBinder$RequestMethod;->INVALID:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    aput-object v5, v1, v2

    sget-object v2, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->$VALUES:[Lmiui/maml/data/WebServiceBinder$RequestMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .registers 2

    const-class v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .registers 1

    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->$VALUES:[Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v0}, [Lmiui/maml/data/WebServiceBinder$RequestMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/maml/data/WebServiceBinder$RequestMethod;

    return-object v0
.end method
