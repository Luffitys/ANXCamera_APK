.class final enum Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
.super Ljava/lang/Enum;
.source ""


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

.field public static final enum LOGIN_FINISHED:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

.field public static final enum LOGIN_INPROGRESS:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

.field public static final enum LOGIN_START:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const-string v1, "LOGIN_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const-string v1, "LOGIN_INPROGRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    new-instance v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const-string v1, "LOGIN_FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_FINISHED:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    sget-object v5, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_START:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->LOGIN_INPROGRESS:Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->$VALUES:[Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
    .locals 1

    const-class v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    return-object p0
.end method

.method public static values()[Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;
    .locals 1

    sget-object v0, Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->$VALUES:[Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    invoke-virtual {v0}, [Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/internal/webkit/WebViewClientDelegate$LoginState;

    return-object v0
.end method
