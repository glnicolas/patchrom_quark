.class Lcom/android/server/ConnectivityService$InternetDetection;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternetDetection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ConnectivityService$InternetDetection$Information;,
        Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;,
        Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;
    }
.end annotation


# instance fields
.field mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

.field private mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;I)V
    .locals 3
    .param p2, "totalNetworkNumber"    # I

    .prologue
    .line 6157
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternetDetection;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6034
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mRandom:Ljava/util/Random;

    .line 6158
    monitor-enter p0

    .line 6159
    :try_start_0
    new-array v1, p2, [Lcom/android/server/ConnectivityService$InternetDetection$Information;

    iput-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    .line 6160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 6161
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    new-instance v2, Lcom/android/server/ConnectivityService$InternetDetection$Information;

    invoke-direct {v2, p0}, Lcom/android/server/ConnectivityService$InternetDetection$Information;-><init>(Lcom/android/server/ConnectivityService$InternetDetection;)V

    aput-object v2, v1, v0

    .line 6160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6163
    :cond_0
    monitor-exit p0

    .line 6164
    return-void

    .line 6163
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private detectLocked(Landroid/net/NetworkInfo;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "netInfo"    # Landroid/net/NetworkInfo;
    .param p2, "targetServer"    # Ljava/lang/String;
    .param p3, "isInternal"    # Z

    .prologue
    .line 6173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternetDetection.detect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),ni="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6174
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 6175
    .local v3, "networkType":I
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_0

    .line 6176
    const-string v0, "A detecting ongoing, ignore this detect request"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6188
    :goto_0
    return-void

    .line 6179
    :cond_0
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v5

    .line 6180
    .local v5, "seq":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generate seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6181
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mSeq:I

    .line 6182
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v0, v0, v3

    new-instance v1, Landroid/net/NetworkInfo;

    invoke-direct {v1, p1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    iput-object v1, v0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mNetInfo:Landroid/net/NetworkInfo;

    .line 6183
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v6, v0, v3

    new-instance v0, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternetDetectThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;-><init>(Lcom/android/server/ConnectivityService$InternetDetection;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, v6, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mThread:Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    .line 6186
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v0, v0, v3

    iput-boolean p3, v0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mIsInternal:Z

    .line 6187
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v0, v0, v3

    iget-object v0, v0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mThread:Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized detectExternal(Landroid/net/NetworkInfo;Ljava/lang/String;)V
    .locals 1
    .param p1, "netInfo"    # Landroid/net/NetworkInfo;
    .param p2, "targetServer"    # Ljava/lang/String;

    .prologue
    .line 6170
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/ConnectivityService$InternetDetection;->detectLocked(Landroid/net/NetworkInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6171
    monitor-exit p0

    return-void

    .line 6170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resetInfo(I)V
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    .line 6213
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$InternetDetection;->supportInternetDetection(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 6216
    :goto_0
    monitor-exit p0

    return-void

    .line 6214
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mNetInfo:Landroid/net/NetworkInfo;

    .line 6215
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mThread:Lcom/android/server/ConnectivityService$InternetDetection$InternetDetectThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setInternetDetectRet(IILcom/android/server/ConnectivityService$InternetDetection$DetectionResult;)V
    .locals 5
    .param p1, "networkType"    # I
    .param p2, "seq"    # I
    .param p3, "result"    # Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;

    .prologue
    .line 6190
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInternetDetectRet("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V

    .line 6191
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mSeq:I

    if-ne p2, v3, :cond_1

    .line 6192
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v3, v3, p1

    iget-boolean v3, v3, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mIsInternal:Z

    if-eqz v3, :cond_0

    .line 6207
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService$InternetDetection;->resetInfo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6211
    :goto_1
    monitor-exit p0

    return-void

    .line 6194
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.net.conn.INTERNET_DETECTION_RESULT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6196
    .local v2, "retIntent":Landroid/content/Intent;
    const-string v3, "networkType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6197
    const-string v3, "detectResult"

    iget v4, p3, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->result:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6198
    const-string v3, "redirectUrl"

    iget-object v4, p3, Lcom/android/server/ConnectivityService$InternetDetection$DetectionResult;->location:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 6201
    .local v0, "ident":J
    :try_start_2
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternetDetection;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6203
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6190
    .end local v0    # "ident":J
    .end local v2    # "retIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 6203
    .restart local v0    # "ident":J
    .restart local v2    # "retIntent":Landroid/content/Intent;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 6209
    .end local v0    # "ident":J
    .end local v2    # "retIntent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInternetDetectRet, seq mismatch, expect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ConnectivityService$InternetDetection;->mInfo:[Lcom/android/server/ConnectivityService$InternetDetection$Information;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/android/server/ConnectivityService$InternetDetection$Information;->mSeq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$300(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method supportInternetDetection(I)Z
    .locals 1
    .param p1, "networkTyep"    # I

    .prologue
    const/4 v0, 0x1

    .line 6166
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
